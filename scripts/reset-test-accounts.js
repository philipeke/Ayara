/**
 * reset-test-accounts.js — Full wipe for ayara-mobile-app
 *
 * Deletes ALL Firebase Auth users and ALL documents in IAP/user collections.
 *
 * Usage:
 *   node scripts/reset-test-accounts.js [path/to/serviceAccount.json]
 *
 * If no service account is provided, uses Application Default Credentials.
 */

const path = require("path");
const admin = require(path.join(__dirname, "../functions/node_modules/firebase-admin"));

const serviceAccountPath = process.argv[2] || null;

if (serviceAccountPath) {
  const sa = require("../" + serviceAccountPath);
  admin.initializeApp({
    credential: admin.credential.cert(sa),
    projectId: "ayara-mobile-app",
  });
} else {
  admin.initializeApp({ projectId: "ayara-mobile-app" });
}

const db = admin.firestore();
const auth = admin.auth();

async function deleteEntireCollection(collectionPath) {
  let deleted = 0;
  while (true) {
    const snap = await db.collection(collectionPath).limit(400).get();
    if (snap.empty) break;
    const batch = db.batch();
    snap.docs.forEach((d) => batch.delete(d.ref));
    await batch.commit();
    deleted += snap.docs.length;
    process.stdout.write(`\r  ✓ ${collectionPath}: ${deleted} docs deleted...`);
  }
  console.log(`\r  ✓ ${collectionPath}: ${deleted} docs deleted       `);
}

async function deleteAllAuthUsers() {
  let pageToken;
  let total = 0;
  do {
    const result = await auth.listUsers(1000, pageToken);
    if (result.users.length > 0) {
      const uids = result.users.map((u) => u.uid);
      const res = await auth.deleteUsers(uids);
      total += res.successCount;
      if (res.failureCount > 0) {
        res.errors.forEach((e) =>
          console.warn(`  ⚠️  Failed to delete uid ${e.index}: ${e.error.message}`)
        );
      }
      process.stdout.write(`\r  ✓ Auth users deleted: ${total}...`);
    }
    pageToken = result.pageToken;
  } while (pageToken);
  console.log(`\r  ✓ Auth users deleted: ${total}              `);
}

async function main() {
  console.log("🔥 ayara-mobile-app — Full test data wipe\n");
  console.log("Deleting Firestore collections...");

  const collections = [
    "users",
    "iap_entitlements",
    "iap_transactions",
    "deleted_credit_snapshots",
    "device_starters",
    "device_bindings",
  ];

  for (const col of collections) {
    await deleteEntireCollection(col);
  }

  console.log("\nDeleting all Firebase Auth users...");
  await deleteAllAuthUsers();

  console.log("\n✅ Done. All accounts and IAP data wiped.");
  process.exit(0);
}

main().catch((e) => {
  console.error("\n❌ Error:", e.message || e);
  console.error(
    "\nIf credentials failed, download a service account key from:\n" +
    "Firebase Console → Project Settings → Service accounts → Generate new private key\n" +
    "Then run:\n  node scripts/reset-test-accounts.js path/to/serviceAccount.json"
  );
  process.exit(1);
});

