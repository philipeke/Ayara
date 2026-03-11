/* eslint-disable */
import * as admin from "firebase-admin";
import { onCall, HttpsError } from "firebase-functions/v2/https";
import * as crypto from "crypto";

const db = admin.firestore();

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

export const deleteAccount = onCall(
  { timeoutSeconds: 60, secrets: ["DEVICE_SALT"], enforceAppCheck: true },
  async (req) => {
    const uid = req.auth?.uid;
    if (!uid) throw new HttpsError("unauthenticated", "Login required");

    if (!DEVICE_SALT) {
      throw new HttpsError("failed-precondition", "Missing DEVICE_SALT");
    }

    const now = admin.firestore.FieldValue.serverTimestamp();

    async function anonymizeQuery(q: FirebaseFirestore.Query) {
      const snap = await q.get();
      if (snap.empty) return 0;

      let updated = 0;
      let batch = db.batch();
      let ops = 0;

      for (const doc of snap.docs) {
        batch.set(
          doc.ref,
          {
            uid: null,
            uidHash: null,
            deviceId: null,
            status: doc.get("status") ?? "verified",
            deletedUserAt: now,
          },
          { merge: true },
        );

        ops++;
        updated++;
        if (ops >= 400) {
          await batch.commit();
          batch = db.batch();
          ops = 0;
        }
      }

      if (ops > 0) await batch.commit();
      return updated;
    }

    async function deleteCollectionRef(
      col: FirebaseFirestore.CollectionReference,
      batchSize = 400,
    ) {
      let total = 0;
      while (true) {
        const snap = await col.limit(batchSize).get();
        if (snap.empty) break;

        const batch = db.batch();
        for (const doc of snap.docs) batch.delete(doc.ref);
        await batch.commit();

        total += snap.size;
        if (snap.size < batchSize) break;
      }
      return total;
    }

    async function deleteChatsAndMessagesForUid(uidToDelete: string) {
      const chatsSnap = await db
        .collection("chats")
        .where("uid", "==", uidToDelete)
        .get();

      if (chatsSnap.empty) return { chats: 0, messages: 0 };

      let deletedChats = 0;
      let deletedMessages = 0;

      for (const chatDoc of chatsSnap.docs) {
        const messagesCol = chatDoc.ref.collection("messages");
        deletedMessages += await deleteCollectionRef(messagesCol, 400);
        await chatDoc.ref.delete();
        deletedChats++;
      }

      return { chats: deletedChats, messages: deletedMessages };
    }

    async function deleteUserHistory(uidToDelete: string) {
      const historyDocRef = db.collection("user_history").doc(uidToDelete);
      const postsCol = historyDocRef.collection("posts");
      const deletedPosts = await deleteCollectionRef(postsCol, 400);
      try {
        await historyDocRef.delete();
      } catch (_) {}
      return { posts: deletedPosts, root: 1 };
    }

    async function anonymizeDeviceMarkersForUid(uidToDelete: string) {
      const [bindByUid, bindByOwner] = await Promise.all([
        db.collection("device_bindings").where("uid", "==", uidToDelete).get(),
        db.collection("device_bindings").where("ownerUid", "==", uidToDelete).get(),
      ]);

      const [startByUid, startByOwner] = await Promise.all([
        db.collection("device_starters").where("uid", "==", uidToDelete).get(),
        db.collection("device_starters").where("ownerUid", "==", uidToDelete).get(),
      ]);

      const bindDocs = new Map<string, FirebaseFirestore.QueryDocumentSnapshot>();
      for (const doc of bindByUid.docs) bindDocs.set(doc.id, doc);
      for (const doc of bindByOwner.docs) bindDocs.set(doc.id, doc);

      const startDocs = new Map<string, FirebaseFirestore.QueryDocumentSnapshot>();
      for (const doc of startByUid.docs) startDocs.set(doc.id, doc);
      for (const doc of startByOwner.docs) startDocs.set(doc.id, doc);

      let updatedBindings = 0;
      let updatedStarters = 0;

      if (bindDocs.size > 0) {
        let batch = db.batch();
        let ops = 0;
        for (const [, doc] of bindDocs) {
          batch.set(
            doc.ref,
            { uid: null, ownerUid: null, deletedUidAt: now, updatedAt: now },
            { merge: true },
          );
          ops++;
          updatedBindings++;
          if (ops >= 400) {
            await batch.commit();
            batch = db.batch();
            ops = 0;
          }
        }
        if (ops > 0) await batch.commit();
      }

      if (startDocs.size > 0) {
        let batch = db.batch();
        let ops = 0;
        for (const [, doc] of startDocs) {
          batch.set(
            doc.ref,
            { uid: null, ownerUid: null, deletedUidAt: now, updatedAt: now },
            { merge: true },
          );
          ops++;
          updatedStarters++;
          if (ops >= 400) {
            await batch.commit();
            batch = db.batch();
            ops = 0;
          }
        }
        if (ops > 0) await batch.commit();
      }

      return { updatedBindings, updatedStarters };
    }

    // -------------------------------------------------
    // 0) SAVE CREDIT SNAPSHOT — inside a transaction
    //    so read + write are atomic, nothing can race.
    //    NEVER overwrite a snapshot that has MORE credits.
    // -------------------------------------------------
    let snapshotSaved = false;
    let snapshotCreditsTotal = 0;
    let snapshotCreditsUsed = 0;
    let snapshotPlan = "basic";

    try {
      const authRecord = await admin.auth().getUser(uid);
      const email = asString(authRecord.email ?? "").toLowerCase().trim();

      if (!email) {
        console.warn("[DELETE] no email on auth record, skipping snapshot", { uid });
      } else {
        const emailHash = sha256(`${email}::${DEVICE_SALT}`);
        const userRef = db.collection("users").doc(uid);
        const snapshotRef = db.collection("deleted_credit_snapshots").doc(emailHash);

        // ✅ Atomic: read user doc + existing snapshot, write only if better
        await db.runTransaction(async (tx) => {
          const [userSnap, existingSnap] = await Promise.all([
            tx.get(userRef),
            tx.get(snapshotRef),
          ]);

          if (!userSnap.exists) {
            console.warn("[DELETE] user doc missing at snapshot time", { uid });
            return;
          }

          const userData = userSnap.data() ?? {};

          // ✅ Read credits from the pool (authoritative) via homePoolId.
          // users/{uid} may have stale/zero values since pool is the source of truth.
          let creditsTotal = 0;
          let creditsUsed = 0;
          const homePoolId = asString(userData.homePoolId ?? "").trim();

          if (homePoolId) {
            const poolSnap = await tx.get(db.collection("device_credits").doc(homePoolId));
            if (poolSnap.exists) {
              const poolData = poolSnap.data() ?? {};
              creditsTotal = asNumber(poolData.reflectionsTotal ?? 0);
              creditsUsed = asNumber(poolData.reflectionsUsed ?? 0);
            }
          }

          // Fallback: if no pool found, try legacy user doc values
          if (creditsTotal <= 0) {
            creditsTotal = asNumber(userData.reflectionsTotal ?? userData.creditsTotal ?? 0);
            creditsUsed = asNumber(userData.reflectionsUsed ?? userData.creditsUsed ?? 0);
          }

          const plan = asString(userData.plan ?? "basic");

          console.log("[DELETE] user doc at snapshot time", {
            uid,
            creditsTotal,
            creditsUsed,
            plan,
          });

          // ✅ KEY RULE: never overwrite a snapshot with FEWER credits.
          // This protects against: delete cheap account → overwrites main snapshot.
          if (existingSnap.exists) {
            const existing = existingSnap.data() ?? {};
            const existingTotal = asNumber((existing as any).creditsTotal ?? 0);
            const existingConsumed = (existing as any).consumed === true;

            if (!existingConsumed && existingTotal > creditsTotal) {
              console.warn("[DELETE] existing snapshot has MORE credits, keeping it", {
                uid,
                existingTotal,
                incomingTotal: creditsTotal,
                emailHashPrefix: emailHash.slice(0, 12),
              });
              // Still capture values for logging
              snapshotCreditsTotal = existingTotal;
              snapshotCreditsUsed = asNumber((existing as any).creditsUsed ?? 0);
              snapshotPlan = asString((existing as any).plan ?? "basic");
              snapshotSaved = true;
              return;
            }
          }

          // Save or overwrite snapshot with current credits
          tx.set(snapshotRef, {
            emailHash,
            deletedUid: uid,
            creditsTotal,
            creditsUsed,
            plan,
            deletedAt: now,
            consumed: false,
            // Clear any previous consumedBy so it can be used again
            consumedByUid: null,
            consumedAt: null,
          });

          snapshotCreditsTotal = creditsTotal;
          snapshotCreditsUsed = creditsUsed;
          snapshotPlan = plan;
          snapshotSaved = true;

          console.log("[DELETE] credit snapshot saved", {
            emailHashPrefix: emailHash.slice(0, 12),
            creditsTotal,
            creditsUsed,
            plan,
          });
        });
      }
    } catch (e: any) {
      console.warn("[DELETE] snapshot save failed (non-fatal):", asString(e?.message ?? e));
    }

    // -------------------------------------------------
    // 1) HARD DELETE: per-user docs
    // -------------------------------------------------
    const userRef = db.collection("users").doc(uid);
    const entRef = db.collection("iap_entitlements").doc(uid);
    const usageRef = db.collection("usage").doc(uid);

    const deleteBatch = db.batch();
    deleteBatch.delete(userRef);
    deleteBatch.delete(entRef);
    deleteBatch.delete(usageRef);
    await deleteBatch.commit();

    // -------------------------------------------------
    // 2) HARD DELETE: chats + messages
    // -------------------------------------------------
    const deletedChatsRes = await deleteChatsAndMessagesForUid(uid);

    // -------------------------------------------------
    // 3) HARD DELETE: user_history
    // -------------------------------------------------
    const deletedHistoryRes = await deleteUserHistory(uid);

    // -------------------------------------------------
    // 4a) Keep mainUid in device_credits (intentionally NOT cleared).
    //     The stale mainUid acts as a guard: only the upgraded guest
    //     (matching lastAnonymousUid) can become the new mainUid.
    //     This prevents random accounts from inheriting the pool.
    // -------------------------------------------------

    // -------------------------------------------------
    // 4b) KEEP device markers: anonymize uid+ownerUid
    // -------------------------------------------------
    const deviceMarkerRes = await anonymizeDeviceMarkersForUid(uid);

    // -------------------------------------------------
    // 5) ANONYMIZE: IAP ledger
    // -------------------------------------------------
    const anonymizedLedger = await anonymizeQuery(
      db.collection("iap_transactions").where("uid", "==", uid),
    );

    console.log("[DELETE] complete", {
      uid,
      snapshotSaved,
      snapshotCreditsTotal,
      snapshotCreditsUsed,
      snapshotPlan,
      anonymizedLedger,
      deviceMarkers: deviceMarkerRes,
    });

    return {
      ok: true,
      deleted: {
        chats: deletedChatsRes.chats,
        chat_messages: deletedChatsRes.messages,
        user_history_posts: deletedHistoryRes.posts,
      },
      deviceMarkers: {
        device_bindings_anonymized: deviceMarkerRes.updatedBindings,
        device_starters_anonymized: deviceMarkerRes.updatedStarters,
      },
      anonymized: {
        iap_transactions: anonymizedLedger,
      },
      snapshotSaved,
      snapshotCreditsTotal,
    };
  },
);