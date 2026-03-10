/* eslint-disable */
import * as admin from "firebase-admin";
import { onCall, HttpsError, CallableRequest } from "firebase-functions/v2/https";

import { sha256, asString, asNumber } from "./_utils";

const db = admin.firestore();

const IAP_LEDGER_SALT = (process.env.IAP_LEDGER_SALT ?? "").trim();
const DEVICE_SALT = (process.env.DEVICE_SALT ?? "").trim();

function uidHashFor(uid: string) {
  if (!IAP_LEDGER_SALT) return "";
  return sha256(`${uid}::${IAP_LEDGER_SALT}`);
}

/**
 * Restore consumable purchases from previous guest (anonymous) sessions on the
 * same physical device.
 *
 * Apple/Google do not restore consumable purchases. When a guest signs out
 * (creating a new anonymous UID), credits bought on the previous anonymous
 * session become inaccessible.
 *
 * This CF finds all `iap_transactions` with a matching device hash that were
 * granted to a DIFFERENT anonymous UID (no email binding), and re-grants the
 * credits to the current user.
 *
 * Idempotency: each transaction records `restoredToUidHash` — it will only
 * be re-granted once per UID.
 *
 * Security:
 *   - Only re-grants transactions with no purchaserEmailHash (anonymous only).
 *   - Device hash prevents cross-device claiming.
 *   - restoredToUidHash prevents double-granting to the same UID.
 */
export const restoreDevicePurchases = onCall(
  {
    secrets: ["IAP_LEDGER_SALT", "DEVICE_SALT"],
    timeoutSeconds: 30,
    enforceAppCheck: true,
  },
  async (req: CallableRequest<any>) => {
    const uid = req.auth?.uid;
    if (!uid) throw new HttpsError("unauthenticated", "Login required");

    if (!IAP_LEDGER_SALT || !DEVICE_SALT) {
      throw new HttpsError("failed-precondition", "Missing IAP_LEDGER_SALT or DEVICE_SALT");
    }

    const { deviceId } = req.data ?? {};
    if (!deviceId) throw new HttpsError("invalid-argument", "Missing deviceId");

    const deviceIdStr = asString(deviceId);
    if (!deviceIdStr) throw new HttpsError("invalid-argument", "Invalid deviceId");

    const deviceIdHash = sha256(`${deviceIdStr}::${DEVICE_SALT}`);
    const currentUidHash = uidHashFor(uid);

    console.log("[RESTORE_DEVICE] start", { uid, deviceIdHash: deviceIdHash.slice(0, 8) + "..." });

    // Find all transactions linked to this device
    const txsQuery = await db
      .collection("iap_transactions")
      .where("purchaserDeviceIdHash", "==", deviceIdHash)
      .get();

    if (txsQuery.empty) {
      console.log("[RESTORE_DEVICE] no device transactions found", { uid });
      return { ok: true, creditsRestored: 0, entitlementsRestored: 0, results: [] };
    }

    console.log("[RESTORE_DEVICE] found transactions", { uid, count: txsQuery.size });

    let creditsRestored = 0;
    let entitlementsRestored = 0;
    const results: any[] = [];

    const now = admin.firestore.FieldValue.serverTimestamp();
    const userRef = db.collection("users").doc(uid);
    const entRef = db.collection("iap_entitlements").doc(uid);

    for (const txDoc of txsQuery.docs) {
      const tx = txDoc.data();

      const txUidHash = asString(tx.uidHash || "");
      const txEmailHash = asString(tx.purchaserEmailHash || "");
      const txType = asString(tx.type || "");
      const txStatus = asString(tx.status || "");
      const txProductId = asString(tx.productId || "");
      const restoredToUidHash = asString(tx.restoredToUidHash || "");

      // Skip if already on this account
      if (txUidHash === currentUidHash) {
        results.push({ txId: txDoc.id, action: "skip_already_owned" });
        continue;
      }

      // Only restore granted transactions
      if (txStatus !== "granted") {
        results.push({ txId: txDoc.id, action: "skip_not_granted", status: txStatus });
        continue;
      }

      // Only restore anonymous (guest) purchases — never email-bound transactions
      if (txEmailHash) {
        results.push({ txId: txDoc.id, action: "skip_email_bound" });
        continue;
      }

      // Idempotency: don't restore to the same UID twice
      if (restoredToUidHash === currentUidHash) {
        results.push({ txId: txDoc.id, action: "skip_already_restored_to_this_uid" });
        continue;
      }

      if (txType === "consumable") {
        const grantedCredits = asNumber(tx.granted?.reflections ?? tx.granted?.credits ?? 0);

        if (grantedCredits <= 0) {
          results.push({ txId: txDoc.id, action: "skip_no_credits" });
          continue;
        }

        // ✅ Restore only what was REMAINING on the old session, not the full
        // purchase amount. Read the old user doc to get their actual remaining.
        const fromUid = asString(tx.uid || "");
        let creditsToRestore = grantedCredits;
        if (fromUid) {
          const fromUserSnap = await db.collection("users").doc(fromUid).get();
          if (fromUserSnap.exists) {
            const fromData = fromUserSnap.data() ?? {};
            const fromTotal = asNumber(fromData.reflectionsTotal ?? fromData.creditsTotal ?? 0);
            const fromUsed = asNumber(fromData.reflectionsUsed ?? fromData.creditsUsed ?? 0);
            const fromRemaining = Math.max(0, fromTotal - fromUsed);
            // Use remaining if it's less than the original grant (credits were used)
            creditsToRestore = fromRemaining > 0 ? Math.min(grantedCredits, fromRemaining) : grantedCredits;
            console.log("[RESTORE_DEVICE] old user remaining", { fromUid, fromTotal, fromUsed, fromRemaining, creditsToRestore });
          }
        }

        const credits = creditsToRestore;

        try {
          await db.runTransaction(async (trx) => {
            const userSnap = await trx.get(userRef);
            const userData = userSnap.data() ?? {};

            const currentTotal = asNumber(userData.reflectionsTotal ?? userData.creditsTotal ?? 0);
            const currentUsed = asNumber(userData.reflectionsUsed ?? userData.creditsUsed ?? 0);
            const newTotal = currentTotal + credits;

            trx.set(
              userRef,
              {
                reflectionsTotal: newTotal,
                creditsTotal: newTotal,
                reflectionsUsed: currentUsed,
                creditsUsed: currentUsed,
                reflectionsUpdatedAt: now,
                creditsUpdatedAt: now,
                updatedAt: now,
                ...(userSnap.exists ? {} : { createdAt: now }),
              },
              { merge: true },
            );

            trx.set(
              txDoc.ref,
              {
                restoredToUidHash: currentUidHash,
                restoredToUid: uid,
                restoredAt: now,
              },
              { merge: true },
            );
          });

          creditsRestored += credits;
          results.push({ txId: txDoc.id, action: "restored_consumable", credits, productId: txProductId });

          console.log("[RESTORE_DEVICE] restored consumable", {
            uid,
            txId: txDoc.id,
            credits,
            productId: txProductId,
          });
        } catch (e: any) {
          console.error("[RESTORE_DEVICE] failed to restore consumable", {
            uid,
            txId: txDoc.id,
            err: e?.message ?? String(e),
          });
          results.push({ txId: txDoc.id, action: "error_consumable", error: e?.message });
        }
      } else if (txType === "entitlement") {
        try {
          await db.runTransaction(async (trx) => {
            const entSnap = await trx.get(entRef);
            const ent = entSnap.data() ?? {};

            // Only restore if not already blessed
            if (ent.isBlessed === true && asString(ent.status ?? "").toLowerCase() === "active") {
              // Already blessed — just mark as restored for idempotency
              trx.set(
                txDoc.ref,
                {
                  restoredToUidHash: currentUidHash,
                  restoredToUid: uid,
                  restoredAt: now,
                },
                { merge: true },
              );
              return;
            }

            trx.set(
              entRef,
              {
                isBlessed: true,
                productId: txProductId,
                platform: asString(tx.platform || ""),
                status: "active",
                lastVerifiedAt: now,
                originalTransactionId: asString(tx.apple?.originalTransactionId || ""),
                environment: asString(tx.apple?.environment || ""),
                restoredFromDeviceAt: now,
              },
              { merge: true },
            );

            trx.set(
              userRef,
              { plan: "blessed", updatedAt: now },
              { merge: true },
            );

            trx.set(
              txDoc.ref,
              {
                restoredToUidHash: currentUidHash,
                restoredToUid: uid,
                restoredAt: now,
              },
              { merge: true },
            );
          });

          entitlementsRestored += 1;
          results.push({ txId: txDoc.id, action: "restored_entitlement", productId: txProductId });

          console.log("[RESTORE_DEVICE] restored entitlement", {
            uid,
            txId: txDoc.id,
            productId: txProductId,
          });
        } catch (e: any) {
          console.error("[RESTORE_DEVICE] failed to restore entitlement", {
            uid,
            txId: txDoc.id,
            err: e?.message ?? String(e),
          });
          results.push({ txId: txDoc.id, action: "error_entitlement", error: e?.message });
        }
      } else {
        results.push({ txId: txDoc.id, action: "skip_unknown_type", type: txType });
      }
    }

    console.log("[RESTORE_DEVICE] done", {
      uid,
      creditsRestored,
      entitlementsRestored,
      total: txsQuery.size,
      restored: results.filter((r) => r.action.startsWith("restored")).length,
    });

    return {
      ok: true,
      creditsRestored,
      entitlementsRestored,
      results,
    };
  },
);
