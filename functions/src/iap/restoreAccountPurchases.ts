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

function deviceBindingId(deviceId: string): string {
  if (!DEVICE_SALT || !deviceId) return "";
  return sha256(`${deviceId}::${DEVICE_SALT}`);
}

/**
 * Restore consumable (credit top-up) purchases for the current account.
 *
 * All accounts on a device share the same credit pool. The pool is resolved
 * via poolRef (device redirect) and homePoolId (cross-device linking).
 *
 * Idempotency: each transaction records the binding IDs it has been
 * restored to in `restoredToBindings`, preventing double-grants.
 */
export const restoreAccountPurchases = onCall(
  {
    secrets: ["IAP_LEDGER_SALT", "DEVICE_SALT"],
    timeoutSeconds: 30,
    enforceAppCheck: true,
  },
  async (req: CallableRequest<any>) => {
    const uid = req.auth?.uid;
    if (!uid) throw new HttpsError("unauthenticated", "Login required");

    if (!IAP_LEDGER_SALT || !DEVICE_SALT) {
      throw new HttpsError(
        "failed-precondition",
        "Missing IAP_LEDGER_SALT or DEVICE_SALT",
      );
    }

    const { deviceId } = req.data ?? {};
    if (!deviceId) throw new HttpsError("invalid-argument", "Missing deviceId");

    const deviceIdStr = asString(deviceId);
    if (!deviceIdStr)
      throw new HttpsError("invalid-argument", "Invalid deviceId");

    const currentUidHash = uidHashFor(uid);
    const bindId = deviceBindingId(deviceIdStr);

    if (!currentUidHash) {
      throw new HttpsError("failed-precondition", "Missing IAP_LEDGER_SALT");
    }
    if (!bindId) {
      throw new HttpsError("failed-precondition", "Missing DEVICE_SALT");
    }

    // Detect anonymous (guest)
    const restoreToken = req.auth?.token as any;
    const restoreProvider = asString(
      restoreToken?.firebase?.sign_in_provider ?? "",
    );
    const isAnonymousRestore = restoreProvider === "anonymous";

    console.log("[RESTORE_ACCOUNT] start", {
      uid,
      bindIdPrefix: bindId.slice(0, 8) + "...",
      isAnonymous: isAnonymousRestore,
    });

    // ─── Pool resolution (pre-read outside transaction) ───
    const localDcRef = db.collection("device_credits").doc(bindId);
    const userRef = db.collection("users").doc(uid);

    let poolId = bindId;
    let poolDocRef = localDcRef;

    try {
      const [localDcSnap, userSnap] = await Promise.all([
        localDcRef.get(),
        userRef.get(),
      ]);

      const localDcData = localDcSnap.exists
        ? (localDcSnap.data() ?? {}) as any
        : null;

      // Follow poolRef redirect
      const devicePoolRef = asString(localDcData?.poolRef || "").trim();
      const deviceHasRedirect = !!devicePoolRef && devicePoolRef !== bindId;

      if (deviceHasRedirect) {
        poolId = devicePoolRef;
        const remoteSnap = await db.collection("device_credits").doc(poolId).get();
        const remoteData = remoteSnap.exists ? (remoteSnap.data() ?? {}) as any : null;
        // Chain safety
        const chainRef = asString(remoteData?.poolRef || "").trim();
        if (chainRef && chainRef !== poolId) {
          poolId = chainRef;
        }
        poolDocRef = db.collection("device_credits").doc(poolId);
      }

      // Cross-device linking
      if (!isAnonymousRestore && userSnap.exists) {
        const homePoolId = asString(
          (userSnap.data() ?? {} as any).homePoolId || "",
        ).trim();
        if (homePoolId && homePoolId !== poolId && !deviceHasRedirect) {
          poolId = homePoolId;
          poolDocRef = db.collection("device_credits").doc(poolId);
        }
      }
    } catch (_) {
      // Fall back to local device pool
    }

    // Find all consumable transactions for the current account
    const txsQuery = await db
      .collection("iap_transactions")
      .where("uidHash", "==", currentUidHash)
      .where("type", "==", "consumable")
      .where("status", "==", "granted")
      .get();

    if (txsQuery.empty) {
      console.log("[RESTORE_ACCOUNT] no account transactions found", { uid });
      return { ok: true, creditsRestored: 0, results: [] };
    }

    console.log("[RESTORE_ACCOUNT] found transactions", {
      uid,
      count: txsQuery.size,
    });

    let creditsRestored = 0;
    const results: any[] = [];
    const now = admin.firestore.FieldValue.serverTimestamp();

    for (const txDoc of txsQuery.docs) {
      const tx = txDoc.data();
      const txProductId = asString(tx.productId || "");
      const grantedCredits = asNumber(
        tx.granted?.reflections ?? tx.granted?.credits ?? 0,
      );

      if (grantedCredits <= 0) {
        results.push({ txId: txDoc.id, action: "skip_no_credits" });
        continue;
      }

      // Idempotency: check if already restored to this device binding
      const restoredToBindings: string[] = Array.isArray(tx.restoredToBindings)
        ? tx.restoredToBindings
        : [];
      if (restoredToBindings.includes(bindId)) {
        results.push({
          txId: txDoc.id,
          action: "skip_already_restored_to_this_device",
        });
        continue;
      }

      try {
        await db.runTransaction(async (trx) => {
          // All accounts restore to the resolved pool
          const dcSnap = await trx.get(poolDocRef);
          const dcData = dcSnap.exists ? (dcSnap.data() ?? {}) : null;
          const currentTotal = asNumber(dcData?.reflectionsTotal ?? 0);
          const currentUsed = asNumber(dcData?.reflectionsUsed ?? 0);

          trx.set(
            poolDocRef,
            {
              reflectionsTotal: currentTotal + grantedCredits,
              reflectionsUsed: currentUsed,
              updatedAt: now,
              ...(dcData ? {} : { starterGranted: false, createdAt: now }),
            },
            { merge: true },
          );

          trx.set(
            txDoc.ref,
            {
              restoredToBindings: admin.firestore.FieldValue.arrayUnion(bindId),
              restoredAccountAt: now,
            },
            { merge: true },
          );
        });

        creditsRestored += grantedCredits;
        results.push({
          txId: txDoc.id,
          action: "restored_consumable",
          credits: grantedCredits,
          productId: txProductId,
        });

        console.log("[RESTORE_ACCOUNT] restored consumable", {
          uid,
          txId: txDoc.id,
          credits: grantedCredits,
          productId: txProductId,
        });
      } catch (e: any) {
        console.error("[RESTORE_ACCOUNT] failed to restore consumable", {
          uid,
          txId: txDoc.id,
          err: e?.message ?? String(e),
        });
        results.push({
          txId: txDoc.id,
          action: "error_consumable",
          error: e?.message,
        });
      }
    }

    console.log("[RESTORE_ACCOUNT] done", {
      uid,
      creditsRestored,
      total: txsQuery.size,
    });

    return {
      ok: true,
      creditsRestored,
      results,
    };
  },
);
