/* eslint-disable */
import * as admin from "firebase-admin";
import { auth } from "firebase-functions/v1";

const db = admin.firestore();

/**
 * ensureUserDefaults
 *
 * PURPOSE:
 * - Create baseline users/{uid}
 * - NEVER grant starter credits here
 * - NEVER recreate deleted accounts incorrectly
 *
 * Starter credits are ONLY granted inside checkAndConsumePrompt
 * using device_starters anti-abuse guard.
 */

export const ensureUserDefaults = auth.user().onCreate(async (user) => {
  const uid = user.uid;

  const userRef = db.collection("users").doc(uid);
  const now = admin.firestore.FieldValue.serverTimestamp();

  const isAnonymousLike = (user.providerData?.length ?? 0) === 0;

  await db.runTransaction(async (tx) => {
    const snap = await tx.get(userRef);

    // -------------------------
    // CASE 1 — user doc exists
    // -------------------------
    if (snap.exists) {
      const data = snap.data() ?? {};

      // IMPORTANT:
      // If account was previously deleted,
      // DO NOT recreate or reset anything.
      if (data.accountDeleted === true) {
        tx.set(
          userRef,
          {
            updatedAt: now,
          },
          { merge: true },
        );
        return;
      }

      // Normal existing user → just touch timestamp
      tx.set(
        userRef,
        {
          updatedAt: now,
        },
        { merge: true },
      );

      return;
    }

    // -------------------------
    // CASE 2 — brand new user
    // -------------------------

    if (isAnonymousLike) {
      tx.set(
        userRef,
        {
          plan: "guest",
          creditsTotal: 0,
          creditsUsed: 0,
          authCreatedAt: now,
          createdAt: now,
          updatedAt: now,
        },
        { merge: true },
      );
      return;
    }

    // Registered account baseline
    tx.set(
      userRef,
      {
        plan: "basic",
        creditsTotal: 0,
        creditsUsed: 0,
        authCreatedAt: now,
        createdAt: now,
        updatedAt: now,
      },
      { merge: true },
    );
  });

  return null;
});