/* eslint-disable */
import * as admin from "firebase-admin";
import { onCall, HttpsError, CallableRequest } from "firebase-functions/v2/https";

import { IAP_CATALOG } from "./catalog";
import { sha256, asString, asNumber } from "./_utils";
import { normalizeUser } from "./_normalizeUser";
import { verifyAppleOrThrow, verifyGoogleOrThrow } from "./_verify";
import { androidPostGrantBestEffort } from "./_androidPostGrant";

const db = admin.firestore();

const APPLE_BUNDLE_ID = (process.env.APPLE_BUNDLE_ID ?? "").trim();
const IAP_LEDGER_SALT = (process.env.IAP_LEDGER_SALT ?? "").trim();
const DEVICE_SALT = (process.env.DEVICE_SALT ?? "").trim();

function deviceBindingId(deviceId: string): string {
  if (!DEVICE_SALT || !deviceId) return "";
  return sha256(`${deviceId}::${DEVICE_SALT}`);
}

// Ayara default bonus for Blessed entitlement (if catalog omits reflections)
const DEFAULT_BLESSED_BONUS_REFLECTIONS = 300;

function isPremiumEntitlementActive(ent: any): boolean {
  const isPremium = ent?.isPremium === true;
  const status = asString(ent?.status ?? "").toLowerCase();
  const statusOk = status === "" || status === "active";
  const expiresAt = ent?.expiresAt ?? null;

  if (expiresAt && typeof expiresAt?.toDate === "function") {
    const d = expiresAt.toDate();
    if (d instanceof Date && !isNaN(d.getTime()) && d.getTime() < Date.now()) {
      return false;
    }
  }
  return isPremium && statusOk;
}

function msSince(t0: number) {
  return Math.max(0, Date.now() - t0);
}

function uidHashFor(uid: string) {
  if (!IAP_LEDGER_SALT) return "";
  return sha256(`${uid}::${IAP_LEDGER_SALT}`);
}

export const iapAcknowledgeAndGrant = onCall(
  {
    secrets: [
      "APPLE_ISSUER_ID",
      "APPLE_KEY_ID",
      "APPLE_PRIVATE_KEY",
      "APPLE_BUNDLE_ID",
      "GOOGLE_SERVICE_ACCOUNT_JSON",
      "GOOGLE_PLAY_PACKAGE_NAME",
      "IAP_LEDGER_SALT",
      "DEVICE_SALT",
    ],
    timeoutSeconds: 60,
    enforceAppCheck: true,
  },
  async (req: CallableRequest<any>) => {
    const t0 = Date.now();

    const uid = req.auth?.uid;
    if (!uid) throw new HttpsError("unauthenticated", "Login required");

    if (!IAP_LEDGER_SALT) {
      throw new HttpsError("failed-precondition", "Missing IAP_LEDGER_SALT");
    }

    const { platform, productId, deviceId, payload } = req.data ?? {};
    if (!platform || !productId || !deviceId || !payload) {
      throw new HttpsError("invalid-argument", "Missing fields");
    }

    const platformStr = asString(platform).toLowerCase();
    const productIdStr = asString(productId);
    const deviceIdStr = asString(deviceId);

    if (!deviceIdStr) throw new HttpsError("invalid-argument", "Missing deviceId");
    if (!productIdStr) throw new HttpsError("invalid-argument", "Missing productId");

    const catalogItem = (IAP_CATALOG as any)[productIdStr];
    if (!catalogItem) {
      throw new HttpsError("invalid-argument", `Unknown productId: ${productIdStr}`);
    }

    const transactionId = asString(payload.transactionId || "");
    if (!transactionId) {
      throw new HttpsError("invalid-argument", "Missing payload.transactionId");
    }

    const purchaseToken = asString(payload.purchaseToken || "");
    const receipt = asString(payload.receipt || "");

    console.log("[IAP] request", {
      uid,
      platform: platformStr,
      productId: productIdStr,
      deviceId: deviceIdStr,
      hasPayload: !!payload,
      hasTransactionId: !!payload?.transactionId,
      hasPurchaseToken: !!payload?.purchaseToken,
      hasReceipt: !!payload?.receipt,
      atMs: t0,
    });

    // ─────────────────────────────────────────────
    // Verify purchase server-side
    // ─────────────────────────────────────────────
    let appleEnvironment: string | null = null;
    let appleOriginalTxId: string | null = null;
    let appleBundleId: string | null = null;
    let appleProductId: string | null = null;

    let googlePurchaseState: number | null = null;
    let googleAckState: number | null = null;
    let googleConsumptionState: number | null = null;
    let googleOrderId: string | null = null;

    const catalogKind = asString(catalogItem.kind || "");
    const isConsumable = catalogKind === "consumable";
    const isEntitlement = catalogKind === "entitlement";

    if (platformStr === "android" && !purchaseToken) {
      console.warn("[IAP] android missing purchaseToken", { uid, productId: productIdStr });
      throw new HttpsError("invalid-argument", "Missing payload.purchaseToken");
    }

    try {
      console.log("[IAP] verify start", { uid, platform: platformStr, productId: productIdStr, t: msSince(t0) });

      if (platformStr === "ios") {
        const apple = await verifyAppleOrThrow({
          transactionId,
          requestedProductId: productIdStr,
          expectedBundleId: APPLE_BUNDLE_ID,
        });

        appleEnvironment = apple.environment;
        appleOriginalTxId = apple.originalTransactionId;
        appleBundleId = apple.bundleId;
        appleProductId = apple.productId;
      } else if (platformStr === "android") {
        const google = await verifyGoogleOrThrow({
          productId: productIdStr,
          purchaseToken,
        });

        googlePurchaseState = google.purchaseState;
        googleAckState = google.acknowledgementState;
        googleConsumptionState = google.consumptionState;
        googleOrderId = google.orderId;

        console.log("[IAP] google verify", {
          productId: productIdStr,
          purchaseState: googlePurchaseState,
          acknowledgementState: googleAckState,
          consumptionState: googleConsumptionState,
          orderId: googleOrderId,
          t: msSince(t0),
        });
      } else {
        throw new HttpsError("invalid-argument", `Unsupported platform: ${platformStr}`);
      }

      console.log("[IAP] verify done", { uid, platform: platformStr, productId: productIdStr, t: msSince(t0) });
    } catch (e: any) {
      const msg = asString(e?.message || e?.toString() || "verify failed");
      console.error("[IAP] verify failed", { uid, platform: platformStr, productId: productIdStr, t: msSince(t0), msg });
      if (e instanceof HttpsError) throw e;
      throw new HttpsError("failed-precondition", `Verify failed: ${msg}`);
    }

    // ─────────────────────────────────────────────
    // Idempotent ledger + grant
    // ─────────────────────────────────────────────
    const txIdForKey = platformStr === "android" ? purchaseToken : transactionId;
    const txKey = `${platformStr}:${txIdForKey}`;
    const txRef = db.collection("iap_transactions").doc(txKey);
    const userRef = db.collection("users").doc(uid);
    const entRef = db.collection("iap_entitlements").doc(uid);

    // ✅ Device credits: grants also top up the shared device credit pool
    const bindId = deviceBindingId(deviceIdStr);
    const deviceCreditsRef = bindId
      ? db.collection("device_credits").doc(bindId)
      : null;

    // ✅ Email-based snapshot for deleted-account balance restore
    const authToken = req.auth?.token as any;
    const restoreEmail = asString(authToken?.email ?? "").toLowerCase().trim();
    const restoreEmailHash =
      restoreEmail && DEVICE_SALT ? sha256(`${restoreEmail}::${DEVICE_SALT}`) : "";
    const snapshotRef = restoreEmailHash
      ? db.collection("deleted_credit_snapshots").doc(restoreEmailHash)
      : null;

    const now = admin.firestore.FieldValue.serverTimestamp();
    const incomingUidHash = uidHashFor(uid);

    // Detect anonymous (guest) for pool resolution
    const iapAuthToken = req.auth?.token as any;
    const iapProvider = asString(iapAuthToken?.firebase?.sign_in_provider ?? "");
    const isAnonymousIap = iapProvider === "anonymous";

    let out: any;
    try {
      console.log("[IAP] txn start", { uid, txKey, productId: productIdStr, t: msSince(t0) });

      out = await db.runTransaction(async (tx: any) => {
        const [txSnap, userSnap, entSnap, snapshotSnap, deviceCreditsSnap] = await Promise.all([
          tx.get(txRef),
          tx.get(userRef),
          tx.get(entRef),
          snapshotRef ? tx.get(snapshotRef) : Promise.resolve(null as any),
          deviceCreditsRef ? tx.get(deviceCreditsRef) : Promise.resolve(null as any),
        ]);

        const userRaw = userSnap.exists ? userSnap.data() ?? {} : {};

        // ✅ Back-compat: map reflections fields into normalizeUser
        const compatUserRaw = {
          ...userRaw,
          creditsTotal: userRaw.reflectionsTotal ?? userRaw.creditsTotal ?? 0,
          creditsUsed: userRaw.reflectionsUsed ?? userRaw.creditsUsed ?? 0,
        };

        const user = normalizeUser(compatUserRaw, userSnap.exists);

        // ─── Pool resolution: all accounts share the device pool ───
        const localDcData = deviceCreditsSnap?.exists
          ? (deviceCreditsSnap.data() ?? {}) as any
          : null;
        let poolId = bindId;
        let poolData = localDcData;
        let poolDocRef = deviceCreditsRef;
        let needsDeviceRedirect = false;

        // Follow poolRef redirect
        const devicePoolRef = asString(localDcData?.poolRef || "").trim();
        const deviceHasRedirect = !!devicePoolRef && devicePoolRef !== bindId;
        if (deviceHasRedirect && deviceCreditsRef) {
          poolId = devicePoolRef;
          let snap = await tx.get(db.collection("device_credits").doc(poolId));
          poolData = snap.exists ? ((snap.data() ?? {}) as any) : null;
          const chainRef = asString(poolData?.poolRef || "").trim();
          if (chainRef && chainRef !== poolId) {
            poolId = chainRef;
            snap = await tx.get(db.collection("device_credits").doc(poolId));
            poolData = snap.exists ? ((snap.data() ?? {}) as any) : null;
          }
          poolDocRef = db.collection("device_credits").doc(poolId);
        }

        // Cross-device linking for non-anonymous users
        if (!isAnonymousIap && userSnap.exists) {
          const homePoolId = asString(userRaw.homePoolId || "").trim();
          if (homePoolId && homePoolId !== poolId && !deviceHasRedirect) {
            poolId = homePoolId;
            const homeSnap = await tx.get(db.collection("device_credits").doc(poolId));
            poolData = homeSnap.exists ? ((homeSnap.data() ?? {}) as any) : null;
            poolDocRef = db.collection("device_credits").doc(poolId);
            needsDeviceRedirect = true;
          }
        }

        // Override user credits with pool values (pool is authoritative)
        if (poolData) {
          user.creditsTotal = asNumber(poolData.reflectionsTotal ?? 0);
          user.creditsUsed = asNumber(poolData.reflectionsUsed ?? 0);
        }

        // Track if homePoolId needs updating
        const shouldSetHomePool = !isAnonymousIap &&
          asString(userRaw.homePoolId || "").trim() !== poolId;

        const ent = (entSnap.data() ?? {}) as any;
        const entActive = isPremiumEntitlementActive(ent);

        // Repair older entitlement docs that miss status
        if (ent?.isPremium === true) {
          const status = asString(ent?.status ?? "");
          if (!status) {
            console.warn("[IAP] REPAIR: entitlement missing status -> set active", { uid });
            tx.set(
              entRef,
              { status: "active", lastVerifiedAt: now, repairedAt: now },
              { merge: true },
            );
          }
        }

        // ─────────────────────────────────────────────
        // ✅ SNAPSHOT RESTORE LOGIC
        // Applied ONCE per email when user doc shows 0 balance.
        // ─────────────────────────────────────────────
        let snapshotData: any = null;
        let snapshotAlreadyApplied = false;

        if (snapshotSnap && snapshotSnap.exists) {
          snapshotData = snapshotSnap.data() ?? {};
          snapshotAlreadyApplied =
            snapshotData.consumed === true && asString(snapshotData.consumedByUid ?? "") === uid;
        }

        // ✅ Apply snapshot when it has MORE remaining credits than the current user.
        const snapRemaining = snapshotData
          ? Math.max(0,
              asNumber(snapshotData.creditsTotal ?? snapshotData.reflectionsTotal ?? 0) -
              asNumber(snapshotData.creditsUsed ?? snapshotData.reflectionsUsed ?? 0))
          : 0;
        const currentRemaining = Math.max(0, user.creditsTotal - user.creditsUsed);

        const shouldApplySnapshot =
          snapshotData !== null &&
          !snapshotAlreadyApplied &&
          snapshotData.consumed !== true &&
          snapRemaining > currentRemaining;

        let entitlementRebound = false;

        if (txSnap.exists) {
          const existing = txSnap.data() as any;

          // 🔒 Ledger lock: if a tx has uidHash, it MUST match this account.
          // Exception: entitlements (non-consumables) can be re-bound because
          // Apple/Google won't charge again — they always replay the same tx ID.
          const existingUidHash = asString(existing.uidHash || "");

          if (existingUidHash && existingUidHash !== incomingUidHash) {
            if (isEntitlement) {
              console.log("[IAP] entitlement re-bind to new account", {
                txKey,
                productId: productIdStr,
              });
              entitlementRebound = true;
            } else {
              console.warn("[IAP] tx uidHash mismatch (consumable)", { txKey });
              throw new HttpsError("failed-precondition", "TX_ALREADY_USED_BY_OTHER_ACCOUNT");
            }
          }

          // If anonymized row has no uidHash, enforce email/device restriction before claiming.
          if (!existingUidHash) {
            const txEmailHash = asString(existing.purchaserEmailHash || "");
            const txDeviceIdHash = asString(existing.purchaserDeviceIdHash || "");

            if (txEmailHash && (!restoreEmailHash || restoreEmailHash !== txEmailHash)) {
              console.warn("[IAP] tx purchaserEmailHash mismatch - cross-account claim rejected", {
                txKey,
                hasCurrentEmail: !!restoreEmailHash,
              });
              throw new HttpsError("failed-precondition", "TX_ACCOUNT_MISMATCH");
            }

            if (!txEmailHash && txDeviceIdHash) {
              const incomingDeviceIdHash =
                deviceIdStr && DEVICE_SALT ? sha256(`${deviceIdStr}::${DEVICE_SALT}`) : "";
              if (incomingDeviceIdHash !== txDeviceIdHash) {
                console.warn("[IAP] tx purchaserDeviceIdHash mismatch - cross-device claim rejected", {
                  txKey,
                });
                throw new HttpsError("failed-precondition", "TX_DEVICE_MISMATCH");
              }
            }

            tx.set(
              txRef,
              {
                uid: uid,
                uidHash: incomingUidHash,
                claimedAt: now,
              },
              { merge: true },
            );
          }

          if (existing.productId && existing.productId !== productIdStr) {
            console.warn("[IAP] transaction product mismatch", {
              txKey,
              existingProductId: existing.productId,
              productId: productIdStr,
            });
            throw new HttpsError("failed-precondition", "TX_PRODUCT_MISMATCH");
          }

          if (existing.status === "granted" && !entitlementRebound) {
            // ─────────────────────────────────────────────
            // Already granted transaction (same account).
            // Restore plan + entitlement if entitlement.
            // Apply snapshot once if balance is 0.
            // ─────────────────────────────────────────────

            // Restore Blessed entitlement if missing/inactive
            if (isEntitlement && !entActive) {
              console.warn("[IAP] REPAIR: granted tx but entitlement inactive -> activate", {
                uid,
                txKey,
                productId: productIdStr,
              });

              tx.set(
                entRef,
                {
                  isPremium: true,
                  productId: productIdStr,
                  platform: platformStr,
                  status: "active",
                  lastVerifiedAt: now,
                  originalTransactionId: appleOriginalTxId ?? null,
                  environment: appleEnvironment ?? null,
                  repairedAt: now,
                },
                { merge: true },
              );
            }

            // Sync plan for Blessed
            if (isEntitlement || entActive) {
              tx.set(userRef, { plan: "premium", updatedAt: now }, { merge: true });
            }

            // ✅ Apply snapshot for ANY already-granted transaction when balance is 0
            if (shouldApplySnapshot) {
              const snapTotal = asNumber(snapshotData.creditsTotal ?? snapshotData.reflectionsTotal ?? 0);
              const snapUsed = asNumber(snapshotData.creditsUsed ?? snapshotData.reflectionsUsed ?? 0);
              const snapPlan = asString(snapshotData.plan ?? "basic");
              const restoredPlan = (isEntitlement || entActive || snapPlan === "premium")
                ? "premium"
                : snapPlan;

              console.log("[IAP] restoring balance from snapshot", {
                uid,
                snapTotal,
                snapUsed,
                remaining: Math.max(0, snapTotal - snapUsed),
                triggeredByProductId: productIdStr,
              });

              tx.set(
                snapshotRef!,
                { consumed: true, consumedByUid: uid, consumedAt: now },
                { merge: true },
              );

              tx.set(
                userRef,
                {
                  plan: restoredPlan,
                  reflectionsTotal: snapTotal,
                  reflectionsUsed: snapUsed,
                  reflectionsUpdatedAt: now,
                  updatedAt: now,
                  creditsTotal: snapTotal,
                  creditsUsed: snapUsed,
                  creditsUpdatedAt: now,
                  creditsRestoredAt: now,
                  ...(user.userDocExists ? {} : { createdAt: now }),
                },
                { merge: true },
              );

              return {
                user: { plan: restoredPlan, creditsTotal: snapTotal, creditsUsed: snapUsed },
                alreadyGranted: true,
                shouldConsumeAndroid: platformStr === "android" && isConsumable,
                shouldAcknowledgeAndroid: platformStr === "android" && isEntitlement,
              };
            }

            const effectivePlan = isEntitlement ? "premium" : (entActive ? "premium" : user.plan || "basic");

            return {
              user: { plan: effectivePlan, creditsTotal: user.creditsTotal, creditsUsed: user.creditsUsed },
              alreadyGranted: true,
              shouldConsumeAndroid: platformStr === "android" && isConsumable,
              shouldAcknowledgeAndroid: platformStr === "android" && isEntitlement,
            };
          }

          if (existing.status === "rejected" || existing.status === "refunded") {
            throw new HttpsError("failed-precondition", `Transaction is ${existing.status}`);
          }
        }

        // ─────────────────────────────────────────────
        // New transaction — write ledger entry first
        // ─────────────────────────────────────────────
        const purchaserDeviceIdHash =
          deviceIdStr && DEVICE_SALT ? sha256(`${deviceIdStr}::${DEVICE_SALT}`) : null;

        const ledgerBase = {
          uid: uid,
          uidHash: incomingUidHash,
          purchaserEmailHash: restoreEmailHash || null,
          purchaserDeviceIdHash: purchaserDeviceIdHash,
          platform: platformStr,
          productId: productIdStr,
          type: catalogKind,
          transactionId,
          status: "verified",
          deviceId: deviceIdStr,
          receiptHash: receipt ? sha256(receipt) : null,
          purchaseTokenHash: purchaseToken ? sha256(purchaseToken) : null,
          apple:
            platformStr === "ios"
              ? {
                  environment: appleEnvironment ?? null,
                  bundleId: appleBundleId ?? null,
                  originalTransactionId: appleOriginalTxId ?? null,
                  productId: appleProductId ?? null,
                }
              : null,
          google:
            platformStr === "android"
              ? {
                  purchaseState: googlePurchaseState,
                  acknowledgementState: googleAckState,
                  consumptionState: googleConsumptionState,
                  orderId: googleOrderId,
                }
              : null,
        };

        if (!txSnap.exists) {
          tx.create(txRef, { ...ledgerBase, createdAt: now, verifiedAt: now });
        } else {
          tx.set(txRef, { ...ledgerBase, verifiedAt: now }, { merge: true });
        }

        // ─────────────────────────────────────────────
        // CONSUMABLE (top-up) — requires Blessed
        // ─────────────────────────────────────────────
        if (isConsumable) {
          if (!entActive) {
            console.warn("[IAP] topup rejected: blessed not active", {
              uid,
              entIsPremium: ent?.isPremium === true,
              entStatus: asString(ent?.status ?? ""),
            });

            tx.set(
              txRef,
              { status: "rejected", reason: "TOPUP_REQUIRES_BLESSED", rejectedAt: now },
              { merge: true },
            );
            throw new HttpsError("failed-precondition", "TOPUP_REQUIRES_BLESSED");
          }

          const reflections = asNumber(catalogItem.reflections ?? catalogItem.credits ?? 0);
          if (reflections <= 0) {
            tx.set(
              txRef,
              { status: "rejected", reason: "INVALID_REFLECTIONS_AMOUNT", rejectedAt: now },
              { merge: true },
            );
            throw new HttpsError("failed-precondition", "INVALID_REFLECTIONS_AMOUNT");
          }

          // ✅ Snapshot first if needed, then add topup
          let baseTotal = user.creditsTotal;
          let baseUsed = user.creditsUsed;

          if (shouldApplySnapshot) {
            baseTotal = asNumber(snapshotData.creditsTotal ?? snapshotData.reflectionsTotal ?? 0);
            baseUsed = asNumber(snapshotData.creditsUsed ?? snapshotData.reflectionsUsed ?? 0);

            tx.set(
              snapshotRef!,
              { consumed: true, consumedByUid: uid, consumedAt: now },
              { merge: true },
            );

            console.log("[IAP] snapshot applied during new topup grant", { uid, baseTotal, baseUsed });
          }

          const nextTotal = baseTotal + reflections;

          tx.set(
            userRef,
            {
              plan: "premium",
              reflectionsTotal: nextTotal,
              reflectionsUsed: baseUsed,
              reflectionsUpdatedAt: now,
              updatedAt: now,
              creditsTotal: nextTotal,
              creditsUsed: baseUsed,
              creditsUpdatedAt: now,
              ...(user.userDocExists ? {} : { createdAt: now }),
            },
            { merge: true },
          );

          // Top up the resolved device credit pool (all accounts share it)
          if (poolDocRef) {
            const dcTotal = asNumber(poolData?.reflectionsTotal ?? 0);
            const dcUsed = asNumber(poolData?.reflectionsUsed ?? 0);
            tx.set(
              poolDocRef,
              {
                reflectionsTotal: dcTotal + reflections,
                reflectionsUsed: dcUsed,
                updatedAt: now,
                ...(poolData ? {} : { starterGranted: false, createdAt: now }),
              },
              { merge: true },
            );

            // Write device redirect if cross-device detected
            if (needsDeviceRedirect && deviceCreditsRef && bindId !== poolId) {
              tx.set(deviceCreditsRef, { poolRef: poolId, updatedAt: now }, { merge: true });
            }
            // Set homePoolId if needed
            if (shouldSetHomePool) {
              tx.set(userRef, { homePoolId: poolId }, { merge: true });
            }
          }

          tx.set(
            txRef,
            {
              status: "granted",
              granted: { reflections },
              grantedAt: now,
              // ✅ Prevent double-grant: mark purchaser's device as already received
              ...(bindId ? { restoredToBindings: admin.firestore.FieldValue.arrayUnion(bindId) } : {}),
            },
            { merge: true },
          );

          return {
            user: { plan: "premium", creditsTotal: nextTotal, creditsUsed: baseUsed },
            alreadyGranted: false,
            shouldConsumeAndroid: platformStr === "android" && isConsumable,
            shouldAcknowledgeAndroid: false,
          };
        }

        // ─────────────────────────────────────────────
        // ENTITLEMENT (Blessed — one-time + bonus)
        // ─────────────────────────────────────────────
        // Bonus reflections logic (all accounts share the pool):
        // - Fresh purchase (not re-bind): always grant bonus from catalog (default 300)
        // - Re-bind: only if pool is empty AND this device hasn't already received a rebound bonus
        const dcTotalForBonus = asNumber(poolData?.reflectionsTotal ?? 0);

        let bonusReflections: number;
        if (entitlementRebound) {
          const existingForBonus = txSnap.exists ? (txSnap.data() as any) : null;
          const blessedBonusGrantedToBindings: string[] = Array.isArray(
            existingForBonus?.blessedBonusGrantedToBindings,
          )
            ? existingForBonus.blessedBonusGrantedToBindings
            : [];
          const bonusAlreadyGrantedHere = bindId
            ? blessedBonusGrantedToBindings.includes(bindId)
            : false;
          bonusReflections =
            !bonusAlreadyGrantedHere && dcTotalForBonus <= 0
              ? DEFAULT_BLESSED_BONUS_REFLECTIONS
              : 0;
        } else {
          bonusReflections = asNumber((catalogItem as any).reflections ?? (catalogItem as any).credits ?? 0);
          if (bonusReflections <= 0) bonusReflections = DEFAULT_BLESSED_BONUS_REFLECTIONS;
        }

        tx.set(
          entRef,
          {
            isPremium: true,
            productId: productIdStr,
            platform: platformStr,
            status: "active",
            lastVerifiedAt: now,
            originalTransactionId: appleOriginalTxId ?? null,
            environment: appleEnvironment ?? null,
          },
          { merge: true },
        );

        // ✅ If snapshot exists, use snapshot totals
        let finalTotal: number;
        let finalUsed: number;

        if (shouldApplySnapshot) {
          finalTotal = asNumber(snapshotData.creditsTotal ?? snapshotData.reflectionsTotal ?? 0);
          finalUsed = asNumber(snapshotData.creditsUsed ?? snapshotData.reflectionsUsed ?? 0);

          if (finalTotal < bonusReflections) {
            finalTotal = bonusReflections;
            finalUsed = 0;
          }

          tx.set(
            snapshotRef!,
            { consumed: true, consumedByUid: uid, consumedAt: now },
            { merge: true },
          );

          console.log("[IAP] snapshot applied during new Blessed grant", { uid, finalTotal, finalUsed });
        } else {
          // First-time Blessed purchase
          finalTotal = user.creditsTotal + bonusReflections;
          finalUsed = user.userDocExists ? user.creditsUsed : 0;
        }

        tx.set(
          userRef,
          {
            plan: "premium",
            reflectionsTotal: finalTotal,
            reflectionsUsed: finalUsed,
            reflectionsUpdatedAt: now,
            updatedAt: now,
            creditsTotal: finalTotal,
            creditsUsed: finalUsed,
            creditsUpdatedAt: now,
            ...(user.userDocExists ? {} : { createdAt: now }),
          },
          { merge: true },
        );

        // Add bonus reflections to the resolved pool (all accounts share it)
        if (poolDocRef && bonusReflections > 0) {
          const dcTotal = asNumber(poolData?.reflectionsTotal ?? 0);
          const dcUsed = asNumber(poolData?.reflectionsUsed ?? 0);
          tx.set(
            poolDocRef,
            {
              reflectionsTotal: dcTotal + bonusReflections,
              reflectionsUsed: dcUsed,
              updatedAt: now,
              ...(poolData ? {} : { starterGranted: false, createdAt: now }),
            },
            { merge: true },
          );
        }

        // Write device redirect if cross-device detected
        if (needsDeviceRedirect && deviceCreditsRef && bindId !== poolId) {
          tx.set(deviceCreditsRef, { poolRef: poolId, updatedAt: now }, { merge: true });
        }
        // Set homePoolId if needed
        if (shouldSetHomePool) {
          tx.set(userRef, { homePoolId: poolId }, { merge: true });
        }

        tx.set(
          txRef,
          {
            status: "granted",
            granted: { entitlement: "premium", bonusReflections },
            grantedAt: now,
            // ✅ Track which devices received the rebound bonus to prevent farming.
            ...(entitlementRebound && bonusReflections > 0 && bindId
              ? { blessedBonusGrantedToBindings: admin.firestore.FieldValue.arrayUnion(bindId) }
              : {}),
          },
          { merge: true },
        );

        return {
          user: { plan: "premium", creditsTotal: finalTotal, creditsUsed: finalUsed },
          alreadyGranted: false,
          shouldConsumeAndroid: false,
          shouldAcknowledgeAndroid: platformStr === "android" && isEntitlement,
        };
      });

      console.log("[IAP] txn done", { uid, txKey, productId: productIdStr, t: msSince(t0) });
    } catch (e: any) {
      const msg = asString(e?.message || e?.toString() || "transaction failed");
      console.error("[IAP] txn failed", { uid, productId: productIdStr, txKey, t: msSince(t0), msg });
      if (e instanceof HttpsError) throw e;
      throw new HttpsError("internal", `Transaction failed: ${msg}`);
    }

    if (platformStr === "android" && purchaseToken) {
      try {
        console.log("[IAP] android postGrant start", {
          uid,
          productId: productIdStr,
          shouldConsume: !!out.shouldConsumeAndroid,
          shouldAcknowledge: !!out.shouldAcknowledgeAndroid,
          ackState: googleAckState,
          consumptionState: googleConsumptionState,
          t: msSince(t0),
        });

        await androidPostGrantBestEffort({
          productId: productIdStr,
          purchaseToken,
          shouldConsume: !!out.shouldConsumeAndroid,
          shouldAcknowledge: !!out.shouldAcknowledgeAndroid,
          acknowledgementState: googleAckState,
          consumptionState: googleConsumptionState,
        });

        console.log("[IAP] android postGrant done", { uid, productId: productIdStr, t: msSince(t0) });
      } catch (e: any) {
        const msg = asString(e?.message || e?.toString() || "android postGrant failed");
        console.error("[IAP] android postGrant failed", { uid, productId: productIdStr, t: msSince(t0), msg });
      }
    }

    const creditsTotal = asNumber(out.user?.creditsTotal);
    const creditsUsed = asNumber(out.user?.creditsUsed);
    const creditsRemaining = Math.max(0, creditsTotal - creditsUsed);

    console.log("[IAP] result", {
      uid,
      productId: productIdStr,
      plan: asString(out.user?.plan ?? "basic") || "basic",
      reflectionsTotal: creditsTotal,
      reflectionsUsed: creditsUsed,
      reflectionsRemaining: creditsRemaining,
      alreadyGranted: !!out.alreadyGranted,
      shouldConsumeAndroid: !!out.shouldConsumeAndroid,
      shouldAcknowledgeAndroid: !!out.shouldAcknowledgeAndroid,
      totalMs: msSince(t0),
    });

    // ✅ Response: keep credits* for client compat, add reflections* for new naming.
    return {
      ok: true,
      plan: asString(out.user?.plan ?? "basic") || "basic",

      // Back-compat (client may still read these)
      creditsUsed,
      creditsTotal,
      creditsRemaining,

      // Ayara naming
      reflectionsUsed: creditsUsed,
      reflectionsTotal: creditsTotal,
      reflectionsRemaining: creditsRemaining,

      alreadyGranted: !!out.alreadyGranted,
    };
  },
);
