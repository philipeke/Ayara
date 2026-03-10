/* eslint-disable */
import * as admin from "firebase-admin";
import { onCall, HttpsError } from "firebase-functions/v2/https";
import * as crypto from "crypto";

const db = admin.firestore();

// Grace starter reflections granted once per device (main + guest pair)
const GRACE_START_REFLECTIONS = 150;

const DEVICE_SALT = (process.env.DEVICE_SALT ?? "").trim();

function sha256(input: string): string {
  return crypto.createHash("sha256").update(input).digest("hex");
}

function asString(v: any): string {
  return typeof v === "string" ? v : v != null ? String(v) : "";
}

function asNumber(v: any): number {
  const n = Number(v ?? 0);
  return Number.isFinite(n) ? n : 0;
}

function safePrefix(s: string, len: number) {
  return (s ?? "").slice(0, len);
}

export const checkAndConsumePrompt = onCall(
  { timeoutSeconds: 10, secrets: ["DEVICE_SALT"], enforceAppCheck: false }, // Re-enable after Google Play approves the app
  async (req) => {
    const uid = req.auth?.uid;
    if (!uid) throw new HttpsError("unauthenticated", "Login required");

    if (!DEVICE_SALT) {
      throw new HttpsError("failed-precondition", "Missing DEVICE_SALT");
    }

    const { deviceId, deviceKey, hardwareId, appVersion, platform, peek, requestId } =
      req.data ?? {};

    const deviceIdStr = asString(deviceId).trim();
    const deviceKeyStr = asString(deviceKey).trim();
    const hardwareIdStr = asString(hardwareId).trim();
    const requestIdStr = asString(requestId).trim();

    if (!deviceIdStr)
      throw new HttpsError("invalid-argument", "Missing deviceId");
    if (!deviceKeyStr)
      throw new HttpsError("invalid-argument", "Missing deviceKey");

    // Hardware-level binding (ANDROID_ID on Android, empty on iOS).
    // Used to block repeated starter credit grants after reinstall.
    const hardwareBindingId = hardwareIdStr
      ? sha256(`hw::${hardwareIdStr}::${DEVICE_SALT}`)
      : "";

    const isPeek = !!peek;

    // Provider info
    const token = req.auth?.token as any;
    const providerId: string | undefined =
      token?.firebase?.sign_in_provider ?? undefined;
    const isAnonymous = providerId === "anonymous";

    // Stable, private doc id per device install
    const bindingId = sha256(`${deviceIdStr}::${DEVICE_SALT}`);
    const deviceKeyHash = sha256(`${deviceKeyStr}::${DEVICE_SALT}`);

    const appVersionStr = asString(appVersion).trim() || null;
    const platformStr = asString(platform).trim() || null;

    console.log("[USAGE] checkAndConsumePrompt", {
      uid,
      bindingIdPrefix: safePrefix(bindingId, 12),
      deviceIdPrefix: safePrefix(deviceIdStr, 10),
      deviceKeyHashPrefix: safePrefix(deviceKeyHash, 12),
      hardwareBindingIdPrefix: safePrefix(hardwareBindingId, 12),
      appVersion: appVersionStr,
      platform: platformStr,
      peek: isPeek,
      providerId,
      isAnonymous,
      requestIdPrefix: safePrefix(requestIdStr, 12),
    });

    const userRef = db.collection("users").doc(uid);
    const entRef = db.collection("iap_entitlements").doc(uid);
    const bindRef = db.collection("device_bindings").doc(bindingId);
    const localDcRef = db.collection("device_credits").doc(bindingId);
    const starterRef = db.collection("device_starters").doc(bindingId);
    // Hardware-level starter ref: blocks repeated grants after Android reinstall
    const hwStarterRef = hardwareBindingId
      ? db.collection("device_starters").doc(hardwareBindingId)
      : null;

    // Idempotency ledger per user (consume only)
    const idemRef =
      !isPeek && requestIdStr
        ? db
            .collection("usage_idempotency")
            .doc(uid)
            .collection("requests")
            .doc(requestIdStr)
        : null;

    const now = admin.firestore.FieldValue.serverTimestamp();

    // ============================================================
    // Pool resolution helper — resolves the canonical credit pool
    // for this device + user combination.
    //
    // Resolution order:
    //   1. Follow device_credits/{bindId}.poolRef (device redirect)
    //   2. If non-anonymous: check users/{uid}.homePoolId for
    //      cross-device linking
    //   3. Fall back to local device pool
    //
    // After resolution, all credit operations target the canonical
    // pool document. All accounts on a device share the same pool.
    // ============================================================
    async function resolvePool(
      tx: FirebaseFirestore.Transaction,
      localDcSnap: FirebaseFirestore.DocumentSnapshot,
      userSnap: FirebaseFirestore.DocumentSnapshot,
    ) {
      const localDc = localDcSnap.exists
        ? ((localDcSnap.data() ?? {}) as any)
        : null;
      let poolId = bindingId;
      let poolData = localDc;
      let poolDocRef: FirebaseFirestore.DocumentReference = localDcRef;
      let needsDeviceRedirect = false;

      // 1. Follow device's existing poolRef redirect
      const devicePoolRef = asString(localDc?.poolRef || "").trim();
      const deviceHasRedirect = !!devicePoolRef && devicePoolRef !== bindingId;

      if (deviceHasRedirect) {
        poolId = devicePoolRef;
        let snap = await tx.get(db.collection("device_credits").doc(poolId));
        poolData = snap.exists ? ((snap.data() ?? {}) as any) : null;

        // Chain safety: follow one more hop
        const chainRef = asString(poolData?.poolRef || "").trim();
        if (chainRef && chainRef !== poolId) {
          poolId = chainRef;
          snap = await tx.get(db.collection("device_credits").doc(poolId));
          poolData = snap.exists ? ((snap.data() ?? {}) as any) : null;
        }

        poolDocRef = db.collection("device_credits").doc(poolId);
      }

      // 2. Cross-device linking for non-anonymous users
      if (!isAnonymous && userSnap.exists) {
        const userData = (userSnap.data() ?? {}) as any;
        const homePoolId = asString(userData.homePoolId || "").trim();

        if (homePoolId && homePoolId !== poolId && !deviceHasRedirect) {
          // Device has no redirect yet — redirect to user's home pool
          poolId = homePoolId;
          const homeSnap = await tx.get(
            db.collection("device_credits").doc(poolId),
          );
          poolData = homeSnap.exists
            ? ((homeSnap.data() ?? {}) as any)
            : null;
          poolDocRef = db.collection("device_credits").doc(poolId);
          needsDeviceRedirect = true;
        }
      }

      return { poolId, poolData, poolDocRef, needsDeviceRedirect };
    }

    // ============================================================
    // PEEK
    // ============================================================
    if (isPeek) {
      let out: any = null;

      await db.runTransaction(async (tx) => {
        const readsPromise: Promise<FirebaseFirestore.DocumentSnapshot>[] = [
          tx.get(userRef),
          tx.get(entRef),
          tx.get(bindRef),
          tx.get(localDcRef),
          tx.get(starterRef),
        ];
        if (hwStarterRef) readsPromise.push(tx.get(hwStarterRef));

        const snaps = await Promise.all(readsPromise);
        const [userSnap, entSnap, bindSnap, localDcSnap, starterSnap] = snaps;
        const hwStarterSnap = hwStarterRef ? snaps[5] : null;

        const user = (userSnap.data() ?? {
          plan: "grace",
          reflectionsTotal: 0,
          reflectionsUsed: 0,
          creditsTotal: 0,
          creditsUsed: 0,
          testBlessed: false,
        }) as any;

        const ent = (entSnap.data() ?? {}) as any;

        const isBlessedEnt = ent.isBlessed === true && ent.status === "active";
        const isBlessedUser = String(user.plan ?? "grace") === "blessed";
        const isBlessedTest = user.testBlessed === true;
        const isBlessed = isBlessedEnt || isBlessedUser || isBlessedTest;

        // ─── Resolve canonical credit pool (must be before any tx.set writes) ───
        const { poolId, poolData: poolDc, poolDocRef, needsDeviceRedirect } =
          await resolvePool(tx, localDcSnap, userSnap);

        // ─── Device binding ───
        if (!bindSnap.exists) {
          tx.set(
            bindRef,
            {
              ownerUid: uid,
              createdAt: now,
              lastSeenAt: now,
              platform: platformStr,
              appVersion: appVersionStr,
              lastDeviceId: deviceIdStr,
              deviceKeyHash,
            },
            { merge: true },
          );
        } else {
          const bind = (bindSnap.data() ?? {}) as any;
          const existingOwner = asString(bind.ownerUid || bind.uid || "").trim();

          if (!asString(bind.ownerUid || "").trim() && existingOwner) {
            tx.set(bindRef, { ownerUid: existingOwner }, { merge: true });
          }

          tx.set(
            bindRef,
            {
              lastSeenAt: now,
              platform: platformStr ?? bind.platform ?? null,
              appVersion: appVersionStr ?? bind.appVersion ?? null,
              lastDeviceId: deviceIdStr,
              deviceKeyHash: asString(bind.deviceKeyHash || "").trim()
                ? bind.deviceKeyHash
                : deviceKeyHash,
            },
            { merge: true },
          );
        }

        // ─── Read pool values ───
        let reflectionsTotal: number;
        let reflectionsUsed: number;
        let starterGranted: boolean;

        if (poolDc) {
          reflectionsTotal = asNumber(poolDc.reflectionsTotal ?? 0);
          reflectionsUsed = asNumber(poolDc.reflectionsUsed ?? 0);
          starterGranted = poolDc.starterGranted === true;
        } else {
          reflectionsTotal = 0;
          reflectionsUsed = 0;
          starterGranted = starterSnap.exists;
        }

        // Starter grant: once per pool, only if pool is empty
        const hwAlreadyGranted = hwStarterSnap?.exists === true;
        if (
          !isBlessed &&
          !starterGranted &&
          !hwAlreadyGranted &&
          reflectionsTotal <= 0
        ) {
          reflectionsTotal = GRACE_START_REFLECTIONS;
          starterGranted = true;

          if (!starterSnap.exists) {
            tx.set(
              starterRef,
              { ownerUid: uid, grantedAt: now },
              { merge: true },
            );
          }

          if (hwStarterRef && !hwAlreadyGranted) {
            tx.set(
              hwStarterRef,
              { ownerUid: uid, grantedAt: now, hardwareBindingId },
              { merge: true },
            );
          }
        }

        // Write/update canonical pool
        tx.set(
          poolDocRef,
          {
            reflectionsTotal,
            reflectionsUsed,
            starterGranted,
            updatedAt: now,
            ...(isAnonymous ? { lastAnonymousUid: uid, ...(!poolDc ? { mainUid: null } : {}) } : {}),
            ...(!asString(poolDc?.mainUid || "").trim() && !isAnonymous
              ? { mainUid: uid }
              : {}),
            ...(poolDc ? {} : { createdAt: now }),
          },
          { merge: true },
        );

        // Write device redirect if cross-device detected
        if (needsDeviceRedirect && bindingId !== poolId) {
          tx.set(
            localDcRef,
            { poolRef: poolId, updatedAt: now },
            { merge: true },
          );
        }

        // Determine if homePoolId needs updating
        const currentHomePool = asString(user.homePoolId || "").trim();
        const shouldSetHomePool = !isAnonymous && currentHomePool !== poolId;

        // Ensure users/{uid} exists (minimal touch + homePoolId)
        if (!userSnap.exists) {
          tx.set(
            userRef,
            {
              plan: isBlessed ? "blessed" : "grace",
              ...(shouldSetHomePool ? { homePoolId: poolId } : {}),
              createdAt: now,
              updatedAt: now,
            },
            { merge: true },
          );
        } else {
          tx.set(
            userRef,
            {
              updatedAt: now,
              ...(shouldSetHomePool ? { homePoolId: poolId } : {}),
            },
            { merge: true },
          );
        }

        const remaining = Math.max(0, reflectionsTotal - reflectionsUsed);

        out = {
          allowed: isBlessed || remaining > 0,
          reason:
            isBlessed || remaining > 0 ? null : "reflections_exhausted",
          reflections: {
            total: reflectionsTotal,
            used: reflectionsUsed,
            remaining,
          },
          credits: {
            total: reflectionsTotal,
            used: reflectionsUsed,
            remaining,
          },
          plan: isBlessed ? "blessed" : "grace",
          entitlement: { isBlessed, expiresAt: null },
        };
      });

      if (!out) throw new HttpsError("internal", "No peek response produced");

      console.log("[USAGE] checkAndConsumePrompt result", out);
      return out;
    }

    // ============================================================
    // CONSUME
    // ============================================================
    let response: any = null;

    await db.runTransaction(async (tx) => {
      const idemSnapPromise = idemRef
        ? tx.get(idemRef)
        : Promise.resolve(null as any);

      const consumeReads: Promise<FirebaseFirestore.DocumentSnapshot>[] = [
        idemSnapPromise,
        tx.get(userRef),
        tx.get(entRef),
        tx.get(bindRef),
        tx.get(localDcRef),
        tx.get(starterRef),
      ];
      if (hwStarterRef) consumeReads.push(tx.get(hwStarterRef));

      const cSnaps = await Promise.all(consumeReads);
      const [idemSnap, userSnap, entSnap, bindSnap, localDcSnap, starterSnap] = cSnaps;
      const hwStarterSnapC = hwStarterRef ? cSnaps[6] : null;

      // 1) Idempotency: already done -> return same response
      if (idemRef && idemSnap && idemSnap.exists) {
        const prev = (idemSnap.data() ?? {}) as any;
        const prevResp = prev.response;
        if (prevResp) {
          response = prevResp;
          return;
        }
        response = {
          allowed: false,
          reason: "consume_in_progress",
          reflections: { total: 0, used: 0, remaining: 0 },
          credits: { total: 0, used: 0, remaining: 0 },
          plan: "grace",
          entitlement: { isBlessed: false, expiresAt: null },
        };
        return;
      }

      const user = (userSnap.data() ?? {
        plan: "grace",
        reflectionsTotal: 0,
        reflectionsUsed: 0,
        creditsTotal: 0,
        creditsUsed: 0,
        testBlessed: false,
      }) as any;

      const ent = (entSnap.data() ?? {}) as any;

      // ─── Resolve canonical credit pool (must be before any tx.set writes) ───
      const { poolId, poolData: poolDc, poolDocRef, needsDeviceRedirect } =
        await resolvePool(tx, localDcSnap, userSnap);

      // Mark idempotency as processing
      if (idemRef) {
        tx.set(
          idemRef,
          { uid, bindingId, createdAt: now, status: "processing" },
          { merge: true },
        );
      }

      // ─── Device binding ───
      if (!bindSnap.exists) {
        tx.set(
          bindRef,
          {
            ownerUid: uid,
            createdAt: now,
            lastSeenAt: now,
            platform: platformStr,
            appVersion: appVersionStr,
            lastDeviceId: deviceIdStr,
            deviceKeyHash,
          },
          { merge: true },
        );
      } else {
        const bind = (bindSnap.data() ?? {}) as any;

        const existingKeyHash = asString(bind.deviceKeyHash);
        if (existingKeyHash && existingKeyHash !== deviceKeyHash) {
          console.warn("[USAGE] deviceKeyHash mismatch", {
            uid,
            bindingIdPrefix: safePrefix(bindingId, 12),
            existingKeyHashPrefix: safePrefix(existingKeyHash, 12),
            incomingKeyHashPrefix: safePrefix(deviceKeyHash, 12),
          });

          response = {
            allowed: false,
            reason: "device_key_mismatch",
            reflections: { total: 0, used: 0, remaining: 0 },
            credits: { total: 0, used: 0, remaining: 0 },
            plan: "grace",
            entitlement: { isBlessed: false, expiresAt: null },
          };

          if (idemRef)
            tx.set(
              idemRef,
              { status: "done", response, updatedAt: now },
              { merge: true },
            );
          return;
        }

        if (
          !asString(bind.ownerUid || "").trim() &&
          asString(bind.uid || "").trim()
        ) {
          tx.set(
            bindRef,
            { ownerUid: asString(bind.uid).trim() },
            { merge: true },
          );
        }

        tx.set(
          bindRef,
          {
            lastSeenAt: now,
            platform: platformStr ?? bind.platform ?? null,
            appVersion: appVersionStr ?? bind.appVersion ?? null,
            lastDeviceId: deviceIdStr,
            deviceKeyHash: existingKeyHash ? existingKeyHash : deviceKeyHash,
          },
          { merge: true },
        );
      }

      // ─── Blessed detection ───
      const isBlessedEnt = ent.isBlessed === true && ent.status === "active";
      const isBlessedUser = String(user.plan ?? "grace") === "blessed";
      const isBlessedTest = user.testBlessed === true;
      const isBlessed = isBlessedEnt || isBlessedUser || isBlessedTest;

      const plan = isBlessed ? "blessed" : "grace";

      // ─── Read pool values ───
      let reflectionsTotal: number;
      let reflectionsUsed: number;
      let starterGranted: boolean;

      if (poolDc) {
        reflectionsTotal = asNumber(poolDc.reflectionsTotal ?? 0);
        reflectionsUsed = asNumber(poolDc.reflectionsUsed ?? 0);
        starterGranted = poolDc.starterGranted === true;
      } else {
        reflectionsTotal = 0;
        reflectionsUsed = 0;
        starterGranted = starterSnap.exists;
      }

      // Starter grant: once per pool, only if pool is empty
      const hwAlreadyGrantedC = hwStarterSnapC?.exists === true;
      if (
        !isBlessed &&
        !starterGranted &&
        !hwAlreadyGrantedC &&
        reflectionsTotal <= 0
      ) {
        reflectionsTotal = GRACE_START_REFLECTIONS;
        starterGranted = true;

        if (!starterSnap.exists) {
          tx.set(
            starterRef,
            { ownerUid: uid, grantedAt: now },
            { merge: true },
          );
        }

        if (hwStarterRef && !hwAlreadyGrantedC) {
          tx.set(
            hwStarterRef,
            { ownerUid: uid, grantedAt: now, hardwareBindingId },
            { merge: true },
          );
        }
      }

      // Write/update canonical pool (initial state)
      tx.set(
        poolDocRef,
        {
          reflectionsTotal,
          reflectionsUsed,
          starterGranted,
          updatedAt: now,
          ...(isAnonymous ? { lastAnonymousUid: uid, ...(!poolDc ? { mainUid: null } : {}) } : {}),
          ...(!asString(poolDc?.mainUid || "").trim() && !isAnonymous
            ? { mainUid: uid }
            : {}),
          ...(poolDc ? {} : { createdAt: now }),
        },
        { merge: true },
      );

      // Write device redirect if cross-device detected
      if (needsDeviceRedirect && bindingId !== poolId) {
        tx.set(
          localDcRef,
          { poolRef: poolId, updatedAt: now },
          { merge: true },
        );
      }

      // Determine if homePoolId needs updating
      const currentHomePool = asString(user.homePoolId || "").trim();
      const shouldSetHomePool = !isAnonymous && currentHomePool !== poolId;

      const reflectionsRemaining = Math.max(
        0,
        reflectionsTotal - reflectionsUsed,
      );

      if (!isBlessed && reflectionsRemaining <= 0) {
        tx.set(
          userRef,
          {
            plan,
            updatedAt: now,
            ...(shouldSetHomePool ? { homePoolId: poolId } : {}),
            ...(userSnap.exists ? {} : { createdAt: now }),
          },
          { merge: true },
        );

        response = {
          allowed: false,
          reason: "reflections_exhausted",
          reflections: {
            total: reflectionsTotal,
            used: reflectionsUsed,
            remaining: reflectionsRemaining,
          },
          credits: {
            total: reflectionsTotal,
            used: reflectionsUsed,
            remaining: reflectionsRemaining,
          },
          plan,
          entitlement: { isBlessed, expiresAt: null },
        };

        if (idemRef)
          tx.set(
            idemRef,
            { status: "done", response, updatedAt: now },
            { merge: true },
          );
        return;
      }

      // Consume 1 reflection from pool
      const nextUsed = reflectionsUsed + 1;
      const nextRemaining = Math.max(0, reflectionsTotal - nextUsed);

      // Authoritative write: canonical pool
      tx.set(
        poolDocRef,
        { reflectionsUsed: nextUsed, updatedAt: now },
        { merge: true },
      );

      // Ensure users/{uid} exists (minimal touch + homePoolId)
      tx.set(
        userRef,
        {
          plan,
          updatedAt: now,
          ...(shouldSetHomePool ? { homePoolId: poolId } : {}),
          ...(userSnap.exists ? {} : { createdAt: now }),
        },
        { merge: true },
      );

      response = {
        allowed: true,
        reason: null,
        reflections: {
          total: reflectionsTotal,
          used: nextUsed,
          remaining: nextRemaining,
        },
        credits: {
          total: reflectionsTotal,
          used: nextUsed,
          remaining: nextRemaining,
        },
        plan,
        entitlement: { isBlessed, expiresAt: null },
      };

      if (idemRef) {
        tx.set(
          idemRef,
          { status: "done", response, updatedAt: now },
          { merge: true },
        );
      }
    });

    if (!response) {
      throw new HttpsError("internal", "No response produced");
    }

    console.log("[USAGE] checkAndConsumePrompt result", response);
    return response;
  },
);
