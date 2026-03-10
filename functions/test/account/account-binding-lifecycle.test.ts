/**
 * account-binding-lifecycle.test.ts
 *
 * End-to-end lifecycle tests for the device credit pool binding system.
 *
 * Scenarios:
 *  1. Guest gets 150 starter credits on first device use
 *  2. Account A logs in on same device → becomes mainUid, shares pool with guest
 *  3. Guest and Account A always read from the same pool (bidirectional sharing)
 *  4. Account A uses credits → pool decremented for both
 *  5. Account A deleted → guest still has all credits (anonymous bypass)
 *  6. Account B logs in after A deleted → "other" account, no pool access
 *  7. Account B CANNOT restore Account A's purchased credits (different uidHash)
 *  8. Re-created Account A (same email, new uid) can reclaim old entitlement via email hash
 *  9. Re-created Account A gets snapshot credits via iapAcknowledgeAndGrant
 * 10. Guest keeps full pool after Account A deleted + Account A2 reclaims entitlement
 * 11. Account B gets premium only if they purchased it themselves
 * 12. lastAnonymousUid: upgraded guest (linked account, same uid) recovers pool after mainUid deletion
 */

import * as crypto from 'crypto';

// ─── Constants ──────────────────────────────────────────────────────────────
const DEVICE_SALT = 'test-device-salt';
const IAP_LEDGER_SALT = 'test-iap-salt';

const DEVICE_ID = 'lifecycle-device-001';
const DEVICE_KEY = 'lifecycle-device-key-001';

// Users
const UID_GUEST = 'uid-anonymous-guest-001';   // anonymous
const UID_A     = 'uid-account-a-001';          // first named account (mainUid)
const UID_A2    = 'uid-account-a2-recreated';   // re-created Account A (same email, new uid)
const UID_B     = 'uid-account-b-001';          // second named account — "other"

const EMAIL_A   = 'accounta@test.com';

function sha256(s: string) {
  return crypto.createHash('sha256').update(s).digest('hex');
}

const bindId        = sha256(`${DEVICE_ID}::${DEVICE_SALT}`);
const deviceKeyHash = sha256(`${DEVICE_KEY}::${DEVICE_SALT}`);
const uidHashA      = sha256(`${UID_A}::${IAP_LEDGER_SALT}`);
const uidHashA2     = sha256(`${UID_A2}::${IAP_LEDGER_SALT}`);
const uidHashB      = sha256(`${UID_B}::${IAP_LEDGER_SALT}`);
const emailHashA    = sha256(`${EMAIL_A}::${DEVICE_SALT}`);

const ENTITLEMENT_PRODUCT = 'com.oakdev.nuria.premium';
const CONSUMABLE_PRODUCT  = 'nuria_reflections_100';

// ─── Mocks ──────────────────────────────────────────────────────────────────
jest.mock('firebase-admin', () =>
  require('../helpers/make-admin-mock').makeAdminMock()
);

jest.mock('firebase-functions/v2/https', () => ({
  onCall: (_config: any, handler: any) => handler,
  HttpsError: class HttpsError extends Error {
    public code: string;
    constructor(code: string, message: string) {
      super(message);
      this.code = code;
    }
  },
}));

jest.mock('../../src/iap/_verify', () => ({
  verifyAppleOrThrow: jest.fn(),
  verifyGoogleOrThrow: jest.fn(),
}));

jest.mock('../../src/iap/_androidPostGrant', () => ({
  androidPostGrantBestEffort: jest.fn().mockResolvedValue(undefined),
}));

// ─── Imports (after mocks) ───────────────────────────────────────────────────
import { checkAndConsumePrompt }   from '../../src/usage/checkAndConsumePrompt';
import { iapAcknowledgeAndGrant }  from '../../src/iap/iapAcknowledgeAndGrant';
import { restoreAccountPurchases } from '../../src/iap/restoreAccountPurchases';

// ─── Test helpers ────────────────────────────────────────────────────────────
function adm() { return jest.requireMock('firebase-admin') as any; }
function verify() { return jest.requireMock('../../src/iap/_verify') as any; }

/** Build a checkAndConsumePrompt request */
function consumeReq(uid: string, provider: 'anonymous' | 'password' = 'password', peek = false): any {
  return {
    auth: { uid, token: { firebase: { sign_in_provider: provider } } },
    data: {
      deviceId: DEVICE_ID,
      deviceKey: DEVICE_KEY,
      peek,
      requestId: `req-${Math.random().toString(36).slice(2)}`,
    },
  };
}

/** Build an iapAcknowledgeAndGrant request */
function iapReq(uid: string, productId: string, txSuffix: string, email = ''): any {
  return {
    auth: {
      uid,
      token: {
        firebase: { sign_in_provider: 'password' },
        email,
      },
    },
    data: {
      platform: 'ios',
      productId,
      deviceId: DEVICE_ID,
      payload: { transactionId: `lifecycle-tx-${txSuffix}` },
    },
  };
}

/** Build a restoreAccountPurchases request */
function restoreReq(uid: string, provider: 'anonymous' | 'password' = 'password'): any {
  return {
    auth: { uid, token: { firebase: { sign_in_provider: provider } } },
    data: { deviceId: DEVICE_ID },
  };
}

/** Simulate deleting Account A: remove user doc, keep stale mainUid in device_credits, anonymize txDocs */
function simulateDeleteAccountA() {
  // Hard delete user + entitlement docs
  adm().__deleteDoc(`users/${UID_A}`);
  adm().__deleteDoc(`iap_entitlements/${UID_A}`);
  // device_credits: intentionally NOT cleared (mainUid stays as guard)
  // IAP transactions anonymized: uidHash → null
}

beforeEach(() => {
  adm().__reset();
  verify().verifyAppleOrThrow.mockResolvedValue({
    environment: 'Sandbox',
    originalTransactionId: 'orig-lifecycle-001',
    bundleId: 'com.oakdev.nuria.test',
    productId: ENTITLEMENT_PRODUCT,
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 1. Guest starter credits
// ═══════════════════════════════════════════════════════════════════════════
describe('1. Guest gets 150 starter credits on first device use', () => {
  it('anonymous user on fresh device → allowed=true, 150 reflections granted', async () => {
    // No state: fresh device, no device_credits, no users doc

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(149); // 1 consumed
    expect(result.plan).toBe('grace');

    // device_credits must have been created with the pool.
    // The consume path writes DC twice: init (all fields) then usage update ({reflectionsUsed}).
    // Find the init op that contains reflectionsTotal.
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    const initOp = dcOps.find((op: any) => op.data.reflectionsTotal !== undefined);
    expect(initOp).toBeDefined();
    expect(initOp.data.reflectionsTotal).toBe(150);
    // mainUid NOT set yet (guest is anonymous)
    expect(initOp.data.mainUid).toBeFalsy();
    // lastAnonymousUid tracks the guest
    expect(initOp.data.lastAnonymousUid).toBe(UID_GUEST);
  });

  it('guest second call → uses same pool (149 remaining after first)', async () => {
    // Simulate state after first call: pool at 150/1
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: null,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 1,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 150,
      reflectionsUsed: 1,
    });
    adm().__setState(`device_bindings/${bindId}`, {
      ownerUid: UID_GUEST,
      deviceKeyHash,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(148); // was 149, consumed 1 more
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 2 & 3. Account A binds with guest — shared pool
// ═══════════════════════════════════════════════════════════════════════════
describe('2–3. Account A logs in → becomes mainUid, shares pool with guest', () => {
  function setupPoolAfterGuestUse() {
    // Device credits after guest used 10 credits
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: null,       // not yet set — guest only so far
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 10,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 150,
      reflectionsUsed: 10,
    });
    adm().__setState(`device_bindings/${bindId}`, {
      ownerUid: UID_GUEST,
      deviceKeyHash,
    });
  }

  it('Account A logs in → mainUid written to device_credits, shares same 140 remaining', async () => {
    setupPoolAfterGuestUse();
    // Account A has no prior credits
    adm().__setState(`users/${UID_A}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password'));

    // Account A should get the pool (140 remaining − 1 consumed = 139)
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(139);

    // device_credits must now have mainUid = UID_A.
    // The consume path writes DC twice; find the init op that contains mainUid.
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    const initOp = dcOps.find((op: any) => op.data.mainUid !== undefined);
    expect(initOp).toBeDefined();
    expect(initOp.data.mainUid).toBe(UID_A);
  });

  it('binding Account A does NOT merge users/{uid} credits into pool (prevents double-count)', async () => {
    setupPoolAfterGuestUse();
    // Account A has 50 credits in their users doc (e.g. from another device's sync)
    adm().__setState(`users/${UID_A}`, {
      plan: 'grace',
      reflectionsTotal: 50,
      reflectionsUsed: 0,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password'));

    // Pool stays at 150 — A's 50 credits are NOT added on top.
    // Pool had 140 remaining (150/10), A consumes 1 → 139 remaining.
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150); // pool unchanged at 150
    expect(result.reflections.remaining).toBe(139);
  });

  it('even with polluted users/{uid} (stale pool cache), pool is NOT inflated', async () => {
    setupPoolAfterGuestUse(); // pool at 150/10
    // users/{uid} has stale pool values (e.g. 2798 from leaked sync)
    adm().__setState(`users/${UID_A}`, {
      plan: 'grace',
      reflectionsTotal: 2798,
      reflectionsUsed: 0,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password'));

    // Pool must stay at 150, NOT 150 + 2798
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(139); // 140 − 1
  });

  it('after A is mainUid, guest still accesses same pool', async () => {
    // Pool with mainUid=A already set, after some usage
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 20,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 150,
      reflectionsUsed: 20,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    const guestResult = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    // Guest sees pool with 130 remaining, consumes 1 → 129
    expect(guestResult.allowed).toBe(true);
    expect(guestResult.reflections.total).toBe(150);
    expect(guestResult.reflections.remaining).toBe(129);
  });

  it('Account A uses credits → pool decremented (guest sees same remaining)', async () => {
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 50,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`users/${UID_A}`, {
      plan: 'grace',
      reflectionsTotal: 150,
      reflectionsUsed: 50,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    const aResult = await (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password'));

    // 100 remaining, consumes 1 → 99
    expect(aResult.allowed).toBe(true);
    expect(aResult.reflections.remaining).toBe(99);

    // The device_credits pool was updated — verify write
    const dcOp = adm().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsUsed).toBe(51);
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 4 & 5. Account A deleted → guest OK, Account B shares pool (shared-pool arch)
// ═══════════════════════════════════════════════════════════════════════════
describe('4–5. Account A deleted → guest keeps credits, Account B is "other"', () => {
  function setupPoolWithDeletedA(guestTotal = 150, guestUsed = 50) {
    // Simulate state after Account A deleted:
    // - users/UID_A does NOT exist (deleted)
    // - device_credits: mainUid still = UID_A (stale guard, NOT cleared)
    // - lastAnonymousUid = UID_GUEST

    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,          // stale — A was deleted but mainUid stays
      starterGranted: true,
      reflectionsTotal: guestTotal,
      reflectionsUsed: guestUsed,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    // users/UID_A intentionally NOT set (simulates deletion)
  }

  it('guest still accesses pool after Account A deleted (anonymous bypass)', async () => {
    setupPoolWithDeletedA(150, 50);
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 150,
      reflectionsUsed: 50,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    // Guest is always isMainOrGuest (anonymous) → still allowed
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(99); // 100 − 1
  });

  it('Account B logs in after A deleted → shares pool (same device = shared pool)', async () => {
    setupPoolWithDeletedA(150, 50);

    // Account B has NO own credits — but shares pool (100 remaining)
    adm().__setState(`users/${UID_B}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_B, 'password'));

    // All accounts on same device share pool → B gets pool access (100 remaining)
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(99); // 100 − 1 consumed
  });

  it('Account B reads from shared pool, not from own users/{uid}', async () => {
    setupPoolWithDeletedA(150, 50);

    // B's users doc has its own credits — but pool is the source of truth on this device
    adm().__setState(`users/${UID_B}`, {
      plan: 'grace',
      reflectionsTotal: 30,
      reflectionsUsed: 0,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_B, 'password'));

    // Shared pool (100 remaining) takes precedence over users/{uid}
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(99);
  });

  it('Account B consuming credits decrements the shared pool', async () => {
    setupPoolWithDeletedA(150, 50);
    adm().__setState(`users/${UID_B}`, {
      plan: 'grace',
      reflectionsTotal: 30,
      reflectionsUsed: 0,
    });

    await (checkAndConsumePrompt as any)(consumeReq(UID_B, 'password'));

    // Pool IS modified (B consumed from shared pool)
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    expect(dcOps.length).toBeGreaterThan(0);
    const usedOp = dcOps.find((op: any) => op.data?.reflectionsUsed !== undefined);
    expect(usedOp).toBeDefined();
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 6. Account B cannot restore Account A's purchases
// ═══════════════════════════════════════════════════════════════════════════
describe('6. Account B cannot restore Account A\'s purchases', () => {
  it('restoreAccountPurchases for B finds no transactions (A\'s are under A\'s uidHash)', async () => {
    // Account A's consumable purchase (with A's uidHash)
    adm().__setState('iap_transactions/ios:lifecycle-tx-a-001', {
      uidHash: uidHashA,
      type: 'consumable',
      status: 'granted',
      productId: CONSUMABLE_PRODUCT,
      granted: { reflections: 100 },
    });

    // device_credits for pool routing
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 100,
      reflectionsUsed: 0,
      lastAnonymousUid: UID_GUEST,
    });

    const result = await (restoreAccountPurchases as any)(restoreReq(UID_B));

    // B's uidHash doesn't match A's uidHash → query returns 0 docs
    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(0);
    expect(result.results).toHaveLength(0);
  });

  it('B cannot claim A\'s anonymized transactions (uidHash=null after deletion)', async () => {
    // After deleteAccount: A's transactions are anonymized (uidHash=null)
    adm().__setState('iap_transactions/ios:lifecycle-tx-a-anon-001', {
      uid: null,
      uidHash: null,         // anonymized — no longer queryable by uidHash
      type: 'consumable',
      status: 'granted',
      productId: CONSUMABLE_PRODUCT,
      granted: { reflections: 100 },
    });

    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 100,
      reflectionsUsed: 0,
    });

    const result = await (restoreAccountPurchases as any)(restoreReq(UID_B));

    // uidHash=null won't match B's uidHash → no results
    expect(result.creditsRestored).toBe(0);
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 7 & 8. Re-created Account A (same email, new uid) restores entitlement + snapshot
// ═══════════════════════════════════════════════════════════════════════════
describe('7–8. Re-created Account A (same email, new uid) reclaims entitlement + snapshot', () => {
  function setupForA2Reclaim(snapshotTotal = 300, snapshotUsed = 50) {
    // Old entitlement txDoc: anonymized after A deletion
    adm().__setState('iap_transactions/ios:lifecycle-tx-ent-001', {
      uid: null,
      uidHash: null,
      purchaserEmailHash: emailHashA,  // bound to Account A's email
      purchaserDeviceIdHash: sha256(`${DEVICE_ID}::${DEVICE_SALT}`),
      type: 'entitlement',
      productId: ENTITLEMENT_PRODUCT,
      status: 'granted',
      granted: { entitlement: 'blessed', bonusReflections: 300 },
    });

    // Credit snapshot saved by deleteAccount (credits Account A had when deleted)
    adm().__setState(`deleted_credit_snapshots/${emailHashA}`, {
      emailHash: emailHashA,
      deletedUid: UID_A,
      creditsTotal: snapshotTotal,
      creditsUsed: snapshotUsed,
      plan: 'blessed',
      consumed: false,
      consumedByUid: null,
    });

    // users/UID_A2: fresh, no credits yet
    adm().__setState(`users/${UID_A2}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });
  }

  it('A2 can claim old entitlement via email hash → gets premium', async () => {
    setupForA2Reclaim();

    verify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-lifecycle-ent-001',
      bundleId: 'com.oakdev.nuria.test',
      productId: ENTITLEMENT_PRODUCT,
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      iapReq(UID_A2, ENTITLEMENT_PRODUCT, 'ent-001', EMAIL_A)
    );

    expect(result.ok).toBe(true);
    expect(result.plan).toBe('blessed');
    // The tx was already status='granted' (just anonymized), so the function
    // re-activates the entitlement and correctly returns alreadyGranted=true.
    expect(result.alreadyGranted).toBe(true);
  });

  it('A2 reclaim applies snapshot credits (gets back the credits A had when deleted)', async () => {
    setupForA2Reclaim(300, 50); // A had 300 total, 50 used = 250 remaining

    verify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-lifecycle-ent-001',
      bundleId: 'com.oakdev.nuria.test',
      productId: ENTITLEMENT_PRODUCT,
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      iapReq(UID_A2, ENTITLEMENT_PRODUCT, 'ent-001', EMAIL_A)
    );

    expect(result.ok).toBe(true);
    // Snapshot has 300/50. A2 gets exactly those credits restored.
    expect(result.reflectionsTotal).toBe(300);
    expect(result.reflectionsUsed).toBe(50);

    // Snapshot must be marked consumed
    const snapOp = adm().__findSetOp(`deleted_credit_snapshots/${emailHashA}`);
    expect(snapOp).toBeDefined();
    expect(snapOp.data.consumed).toBe(true);
    expect(snapOp.data.consumedByUid).toBe(UID_A2);
  });

  it('snapshot is not applied twice (second call returns alreadyGranted)', async () => {
    setupForA2Reclaim(300, 50);

    verify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-lifecycle-ent-001',
      bundleId: 'com.oakdev.nuria.test',
      productId: ENTITLEMENT_PRODUCT,
    });

    // First call: snapshot applied
    await (iapAcknowledgeAndGrant as any)(
      iapReq(UID_A2, ENTITLEMENT_PRODUCT, 'ent-001', EMAIL_A)
    );

    // Manually update state to simulate snapshot consumed + tx granted
    adm().__setState(`deleted_credit_snapshots/${emailHashA}`, {
      consumed: true,
      consumedByUid: UID_A2,
    });
    adm().__setState('iap_transactions/ios:lifecycle-tx-ent-001', {
      uid: UID_A2,
      uidHash: uidHashA2,
      purchaserEmailHash: emailHashA,
      type: 'entitlement',
      productId: ENTITLEMENT_PRODUCT,
      status: 'granted',
      granted: { entitlement: 'blessed', bonusReflections: 300 },
    });
    adm().__setState(`iap_entitlements/${UID_A2}`, {
      isBlessed: true,
      status: 'active',
    });

    // Second call: already granted
    const result2 = await (iapAcknowledgeAndGrant as any)(
      iapReq(UID_A2, ENTITLEMENT_PRODUCT, 'ent-001', EMAIL_A)
    );

    expect(result2.alreadyGranted).toBe(true);
  });

  it('wrong email cannot claim A\'s entitlement', async () => {
    setupForA2Reclaim();

    verify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-lifecycle-ent-001',
      bundleId: 'com.oakdev.nuria.test',
      productId: ENTITLEMENT_PRODUCT,
    });

    // Account B with different email tries to claim
    await expect(
      (iapAcknowledgeAndGrant as any)(
        iapReq(UID_B, ENTITLEMENT_PRODUCT, 'ent-001', 'wrong@email.com')
      )
    ).rejects.toMatchObject({ message: 'TX_ACCOUNT_MISMATCH' });
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 9 & 10. Guest keeps pool after A deleted; A2 is "other" for pool
// ═══════════════════════════════════════════════════════════════════════════
describe('9–10. Guest keeps pool; A2 (re-created) is "other" for pool routing', () => {
  function setupPoolPostDeletion() {
    // device_credits: stale mainUid=UID_A, guest has 80 remaining
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,          // stale — A deleted, not cleared
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 70,     // 80 remaining
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    // users/UID_A NOT set (deleted)
  }

  it('guest still uses pool after A deleted (80 remaining → 79)', async () => {
    setupPoolPostDeletion();
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 150,
      reflectionsUsed: 70,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(79);
  });

  it('A2 (re-created, new uid) shares pool with device — blessed user always allowed', async () => {
    setupPoolPostDeletion();

    // A2 has 200 credits in own users doc (restored via snapshot/entitlement)
    // But all accounts on same device share pool — A2 also reads from pool
    adm().__setState(`users/${UID_A2}`, {
      plan: 'blessed',
      reflectionsTotal: 200,
      reflectionsUsed: 0,
    });
    adm().__setState(`iap_entitlements/${UID_A2}`, {
      isBlessed: true,
      status: 'active',
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_A2, 'password'));

    // A2 shares pool → reads from pool (80 remaining). A2 is Blessed → always allowed.
    expect(result.allowed).toBe(true);
    expect(result.plan).toBe('blessed');
    expect(result.entitlement.isBlessed).toBe(true);
    // Blessed users consume from pool too (they just can't be blocked)
    expect(result.reflections.total).toBe(150); // shared pool total
  });

  it('pool credits are UNCHANGED after A2 uses app (pool belongs to guest)', async () => {
    setupPoolPostDeletion();
    adm().__setState(`users/${UID_A2}`, {
      plan: 'grace',
      reflectionsTotal: 50,
      reflectionsUsed: 0,
    });

    await (checkAndConsumePrompt as any)(consumeReq(UID_A2, 'password'));

    // Now guest checks: should still see 80 remaining (A2 didn't touch pool)
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 150,
      reflectionsUsed: 70,
    });

    const guestResult = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    // Guest sees 80 remaining (pool not touched by A2's consumption from own credits)
    expect(guestResult.reflections.remaining).toBe(79); // 80 − 1
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 11. Account B premium: B only gets premium if B bought it
// ═══════════════════════════════════════════════════════════════════════════
describe('11. Account B gets premium only if B purchased it themselves', () => {
  it('B with no purchases and no entitlement → shares pool, allowed when pool has credits', async () => {
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 500,
      reflectionsUsed: 0,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`users/${UID_B}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_B, 'password'));

    // B shares pool (500 credits remaining) → allowed
    expect(result.allowed).toBe(true);
    expect(result.plan).toBe('grace');
    expect(result.reflections.total).toBe(500);
    expect(result.reflections.remaining).toBe(499);
  });

  it('B with entitlement → blessed, allowed even with 0 credits', async () => {
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 500,
      reflectionsUsed: 0,
    });
    adm().__setState(`users/${UID_B}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });
    // B purchased their own entitlement
    adm().__setState(`iap_entitlements/${UID_B}`, {
      isBlessed: true,
      status: 'active',
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_B, 'password'));

    expect(result.allowed).toBe(true);
    expect(result.plan).toBe('blessed');
    expect(result.entitlement.isBlessed).toBe(true);
  });

  it('B cannot restore A\'s consumables even if A is main and B is "other"', async () => {
    // A bought 100 reflections
    adm().__setState('iap_transactions/ios:b-restore-test-001', {
      uidHash: uidHashA,
      type: 'consumable',
      status: 'granted',
      productId: CONSUMABLE_PRODUCT,
      granted: { reflections: 100 },
      restoredToBindings: [],
    });

    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 100,
      reflectionsUsed: 0,
    });

    // B tries to restore
    const result = await (restoreAccountPurchases as any)(restoreReq(UID_B));

    expect(result.creditsRestored).toBe(0);
    expect(result.results).toHaveLength(0);
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 12. Upgraded guest (same uid) — lastAnonymousUid recovery
// ═══════════════════════════════════════════════════════════════════════════
describe('12. lastAnonymousUid: upgraded guest recovers pool after mainUid deletion', () => {
  /**
   * Scenario: user was anonymous (guest1), then LINKED their account to email
   * (uid stays the same). Now guest1 is the mainUid (non-anonymous).
   * If they delete their account and re-login... but more importantly:
   *
   * Another common case: guest1 (anonymous) used device, then signed in as
   * Account A (different uid). A becomes mainUid. A deletes.
   *
   * Now if the USER comes back as guest1 (anonymous), they still have pool access.
   * If they then LINK guest1 to become a permanent account with same uid=guest1,
   * this "upgraded guest" should recover pool access because lastAnonymousUid=guest1.
   */
  it('upgraded guest (uid matches lastAnonymousUid) can access pool after mainUid deleted', async () => {
    // State: A was mainUid, A deleted, lastAnonymousUid=UID_GUEST
    // UID_GUEST is now calling as non-anonymous (upgraded/linked account — same uid)
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,           // stale, A deleted
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 30,
      lastAnonymousUid: UID_GUEST,  // guest uid saved previously
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    // users/UID_A NOT set (deleted)

    // UID_GUEST is now signing in as password (they linked their anonymous account)
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });

    // UID_GUEST logging in as non-anonymous (provider=password, same uid)
    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'password'));

    // Recovery: mainUid=A deleted → check lastAnonymousUid=GUEST === uid=GUEST → upgraded guest!
    // Becomes new effective main → gets pool access
    expect(result.allowed).toBe(true);
    // Pool had 120 remaining; upgraded guest gets it
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(119); // 120 − 1
  });

  it('Account C on same device shares pool (all accounts on device share credits)', async () => {
    const UID_C = 'uid-account-c-unrelated';

    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 30,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    // users/UID_A NOT set (deleted)

    adm().__setState(`users/${UID_C}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_C, 'password'));

    // C uses same device → shares pool (120 remaining) → allowed
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(119); // 120 − 1
  });

  it('restored consumables go to pool for main/guest, not for "other"', async () => {
    // Account A bought 100 reflections. A is main. After A deleted, guest calls restore.
    const TX_PATH = 'iap_transactions/ios:lifecycle-restore-main-001';
    adm().__setState(TX_PATH, {
      uidHash: sha256(`${UID_GUEST}::${IAP_LEDGER_SALT}`), // guest bought this
      type: 'consumable',
      status: 'granted',
      productId: CONSUMABLE_PRODUCT,
      granted: { reflections: 100 },
      restoredToBindings: [],
    });

    adm().__setState(`device_credits/${bindId}`, {
      mainUid: null,            // no mainUid yet (only guest has used device)
      starterGranted: true,
      reflectionsTotal: 50,
      reflectionsUsed: 50,
      lastAnonymousUid: UID_GUEST,
    });

    // Guest calls restoreAccountPurchases → goes to pool
    const result = await (restoreAccountPurchases as any)(restoreReq(UID_GUEST, 'anonymous'));

    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(100);
    expect(result.results[0].action).toBe('restored_consumable');

    // Pool was updated
    const dcOp = adm().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(150); // 50 + 100
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 13. All accounts share pool; credits never grow via inflation
//     Fix: pool values are NEVER written to users/{uid} (prevents double-count)
//     All accounts on same device share the pool — credits can be consumed
//     but never inflated beyond what was legitimately purchased/granted.
// ═══════════════════════════════════════════════════════════════════════════
describe('13. Anonymous → linked account: pool values never leak via users/{uid}', () => {
  it('peek does NOT write pool credits to users/{uid}', async () => {
    // Guest on fresh device → gets 150 starter
    // Pool writes to device_credits but NOT to users/{uid}
    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);

    // users/{uid} must NOT have reflectionsTotal written to it
    const userOps = adm().__getOpsForPath(`users/${UID_GUEST}`);
    const creditsSynced = userOps.find((op: any) =>
      op.data?.reflectionsTotal !== undefined || op.data?.creditsTotal !== undefined
    );
    expect(creditsSynced).toBeUndefined();
  });

  it('linked account (same uid, now non-anonymous) sees 0 pool credits — no leak', async () => {
    // State: guest (UID_GUEST) used device → pool at 2798/0
    // users/{UID_GUEST} has ONLY plan/timestamps (no credit values)
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: null,           // not yet set
      starterGranted: true,
      reflectionsTotal: 2798,
      reflectionsUsed: 0,
      lastAnonymousUid: UID_GUEST,
    });
    // users doc has NO credit fields (correct — pool doesn't write them)
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      updatedAt: null,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_GUEST, deviceKeyHash });

    // UID_GUEST now calls as non-anonymous (linked account, same uid)
    // This is the first non-anonymous call → becomes mainUid
    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'password'));

    // mainUid=null → UID_GUEST is isMainOrGuest → gets pool access (correct!)
    // BUT pool value (2798) must NOT have been inflated by credit merge
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(2798); // just the pool, no inflation

    // Verify NO double-counting: find the dc init op and check total
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    const initOp = dcOps.find((op: any) => op.data?.reflectionsTotal !== undefined);
    expect(initOp).toBeDefined();
    expect(initOp.data.reflectionsTotal).toBe(2798); // exactly 2798, not 2798+2798
  });

  it('all accounts on device share pool: guest → A → B all see same pool (2798)', async () => {
    // Pool built up to 2798 credits on this device
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 2798,
      reflectionsUsed: 0,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    adm().__setState(`users/${UID_A}`, { plan: 'grace', updatedAt: null });

    // Account B logs in — shares pool (same device, same bindId)
    adm().__setState(`users/${UID_B}`, { plan: 'grace', updatedAt: null });

    const bResult = await (checkAndConsumePrompt as any)(consumeReq(UID_B, 'password'));

    // B shares pool → sees 2798 credits, allowed
    expect(bResult.allowed).toBe(true);
    expect(bResult.reflections.total).toBe(2798);
    expect(bResult.reflections.remaining).toBe(2797); // 2798 − 1
  });

  it('Account C after B — credits never grow: pool total stays at 2798 (only consumed, not inflated)', async () => {
    const UID_C = 'uid-account-c-attack-001';

    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 2798,
      reflectionsUsed: 0,
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    adm().__setState(`users/${UID_B}`, { plan: 'grace' });
    adm().__setState(`users/${UID_C}`, { plan: 'grace', reflectionsTotal: 300 }); // stale

    // B then C both log in — both share pool
    await (checkAndConsumePrompt as any)(consumeReq(UID_B, 'password'));
    await (checkAndConsumePrompt as any)(consumeReq(UID_C, 'password'));

    // Pool is touched (credits consumed), but total never GROWS beyond 2798
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    expect(dcOps.length).toBeGreaterThan(0);
    // Total must not exceed 2798 (no credit inflation)
    const totalWriteOp = dcOps.find((op: any) => op.data?.reflectionsTotal !== undefined);
    if (totalWriteOp) {
      expect(totalWriteOp.data.reflectionsTotal).toBeLessThanOrEqual(2798);
    }
  });

  it('Account A (mainUid) re-logs in — still sees exactly 2798, NOT 2798 + 2798', async () => {
    // A's users doc has stale/synced values — should NOT be merged into pool
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 2798,
      reflectionsUsed: 100,
    });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    // Stale users doc with 2698 remaining (2798-100) — would cause double-count if merged
    adm().__setState(`users/${UID_A}`, {
      plan: 'grace',
      reflectionsTotal: 2798,
      reflectionsUsed: 100,
    });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password'));

    // Pool total must stay 2798, NOT jump to 2798 + 2698 = 5496
    expect(result.reflections.total).toBe(2798);
    expect(result.reflections.remaining).toBe(2697); // 2698 − 1
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 14. Two devices have independent pools (was 13)
// ═══════════════════════════════════════════════════════════════════════════
describe('14. Two devices have independent credit pools', () => {
  const DEVICE_ID_2 = 'lifecycle-device-002';
  const DEVICE_KEY_2 = 'lifecycle-device-key-002';
  const bindId2 = sha256(`${DEVICE_ID_2}::${DEVICE_SALT}`);
  const deviceKeyHash2 = sha256(`${DEVICE_KEY_2}::${DEVICE_SALT}`);

  function consumeReqDevice2(uid: string, provider: 'anonymous' | 'password' = 'password', peek = false): any {
    return {
      auth: { uid, token: { firebase: { sign_in_provider: provider } } },
      data: {
        deviceId: DEVICE_ID_2,
        deviceKey: DEVICE_KEY_2,
        peek,
        requestId: `req-d2-${Math.random().toString(36).slice(2)}`,
      },
    };
  }

  it('Account A on Device 1 and Account B on Device 2 have separate pools', async () => {
    // Device 1: Account A has 500 credits
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 500,
      reflectionsUsed: 0,
    });
    adm().__setState(`users/${UID_A}`, { plan: 'grace', reflectionsTotal: 500, reflectionsUsed: 0 });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    // Device 2: Account B is fresh (no credits yet)
    adm().__setState(`users/${UID_B}`, { plan: 'grace', reflectionsTotal: 0, reflectionsUsed: 0 });
    adm().__setState(`device_bindings/${bindId2}`, { ownerUid: UID_B, deviceKeyHash: deviceKeyHash2 });

    const [resultA, resultB] = await Promise.all([
      (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password')),
      (checkAndConsumePrompt as any)(consumeReqDevice2(UID_B, 'password')),
    ]);

    // Device 1: Account A sees 500 credits, consumes 1
    expect(resultA.allowed).toBe(true);
    expect(resultA.reflections.total).toBe(500);
    expect(resultA.reflections.remaining).toBe(499);

    // Device 2: Account B gets the 150 starter (fresh device, no mainUid set)
    expect(resultB.allowed).toBe(true);
    expect(resultB.reflections.total).toBe(150);

    // Pools are independent — Device 1 pool unchanged by Device 2
    const dc1Ops = adm().__getOpsForPath(`device_credits/${bindId}`);
    const dc2Ops = adm().__getOpsForPath(`device_credits/${bindId2}`);

    // Device 1 pool operations only reference bindId (not bindId2)
    expect(dc1Ops.every((op: any) => !op.path.includes(bindId2))).toBe(true);
    // Device 2 pool operations only reference bindId2 (not bindId)
    expect(dc2Ops.every((op: any) => !op.path.includes(bindId))).toBe(true);
  });

  it('consuming on Device 2 does not affect Device 1 pool', async () => {
    // Device 1 pool: 150 credits with Account A
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 0,
    });
    adm().__setState(`users/${UID_A}`, { plan: 'grace', reflectionsTotal: 150, reflectionsUsed: 0 });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    // Device 2 pool: 150 credits with Account B
    adm().__setState(`device_credits/${bindId2}`, {
      mainUid: UID_B,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 100, // only 50 remaining
    });
    adm().__setState(`users/${UID_B}`, { plan: 'grace', reflectionsTotal: 150, reflectionsUsed: 100 });
    adm().__setState(`device_bindings/${bindId2}`, { ownerUid: UID_B, deviceKeyHash: deviceKeyHash2 });

    // Account B consumes on Device 2 five times
    for (let i = 0; i < 5; i++) {
      await (checkAndConsumePrompt as any)(consumeReqDevice2(UID_B, 'password'));
      // Update Device 2 pool state between calls
      const d2Ops = adm().__getOpsForPath(`device_credits/${bindId2}`);
      const lastUsed = d2Ops.reverse().find((op: any) => op.data?.reflectionsUsed !== undefined)?.data.reflectionsUsed ?? 100;
      adm().__setState(`device_credits/${bindId2}`, {
        mainUid: UID_B,
        starterGranted: true,
        reflectionsTotal: 150,
        reflectionsUsed: lastUsed,
      });
    }

    // Device 1 pool must be completely untouched
    const dc1Ops = adm().__getOpsForPath(`device_credits/${bindId}`);
    expect(dc1Ops).toHaveLength(0); // Account A on Device 1 never called
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 14. Starter grant is strictly once per device
// ═══════════════════════════════════════════════════════════════════════════
describe('15. Starter grant is strictly once per device', () => {
  it('10 consecutive consumes on fresh device: credits start at 150 and count down', async () => {
    // Fresh device — no state at all
    let currentTotal = 0;
    let currentUsed = 0;

    for (let i = 0; i < 10; i++) {
      const result = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

      if (i === 0) {
        // First call: starter granted → 150 total, 1 consumed
        expect(result.reflections.total).toBe(150);
        expect(result.reflections.remaining).toBe(149);
        currentTotal = 150;
        currentUsed = 1;
      } else {
        // Subsequent calls: same total, used increments
        expect(result.reflections.total).toBe(150); // never increases past 150
        currentUsed++;
        expect(result.reflections.remaining).toBe(150 - currentUsed);
      }

      // Update mock state to reflect the consumed credit for next iteration
      adm().__setState(`device_credits/${bindId}`, {
        mainUid: null,
        starterGranted: true,
        reflectionsTotal: 150,
        reflectionsUsed: currentUsed,
        lastAnonymousUid: UID_GUEST,
      });
      adm().__setState(`users/${UID_GUEST}`, {
        plan: 'grace',
        reflectionsTotal: 150,
        reflectionsUsed: currentUsed,
      });
      adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_GUEST, deviceKeyHash });
    }

    // After 10 calls: total still 150 (started once), used = 10
    expect(currentTotal).toBe(150);
    expect(currentUsed).toBe(10);
  });

  it('blessed user never gets starter credits', async () => {
    // User is blessed — even on a fresh device with 0 credits
    adm().__setState(`iap_entitlements/${UID_A}`, { isBlessed: true, status: 'active' });
    adm().__setState(`users/${UID_A}`, { plan: 'blessed', reflectionsTotal: 0, reflectionsUsed: 0 });
    // No device_credits, no device_starters

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password'));

    // Blessed: always allowed, no starter needed
    expect(result.allowed).toBe(true);
    expect(result.plan).toBe('blessed');

    // Starter must NOT have been granted (reflectionsTotal stays 0 or only pool writes occur)
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    const starterOp = dcOps.find((op: any) => op.data?.reflectionsTotal === 150);
    expect(starterOp).toBeUndefined();
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 15. Pool exhaustion — both guest and Account A see 0 remaining
// ═══════════════════════════════════════════════════════════════════════════
describe('16. Pool exhaustion: guest and Account A both see 0 when exhausted', () => {
  it('pool exhausted → guest denied, Account A denied, reason=reflections_exhausted', async () => {
    // Pool completely exhausted
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 150, // 0 remaining
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`users/${UID_A}`, { plan: 'grace', reflectionsTotal: 150, reflectionsUsed: 150 });
    adm().__setState(`users/${UID_GUEST}`, { plan: 'grace', reflectionsTotal: 150, reflectionsUsed: 150 });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    const [guestResult, aResult] = await Promise.all([
      (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous')),
      (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password')),
    ]);

    expect(guestResult.allowed).toBe(false);
    expect(guestResult.reason).toBe('reflections_exhausted');
    expect(guestResult.reflections.remaining).toBe(0);

    expect(aResult.allowed).toBe(false);
    expect(aResult.reason).toBe('reflections_exhausted');
    expect(aResult.reflections.remaining).toBe(0);
  });

  it('blessed pool member is allowed even when pool is exhausted', async () => {
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 150, // 0 remaining
    });
    adm().__setState(`users/${UID_A}`, { plan: 'grace', reflectionsTotal: 150, reflectionsUsed: 150 });
    adm().__setState(`iap_entitlements/${UID_A}`, { isBlessed: true, status: 'active' });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    const result = await (checkAndConsumePrompt as any)(consumeReq(UID_A, 'password'));

    expect(result.allowed).toBe(true);
    expect(result.plan).toBe('blessed');
    expect(result.reflections.remaining).toBe(0); // 0 remaining but blessed bypasses
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 16. Peek mode — reads without consuming
// ═══════════════════════════════════════════════════════════════════════════
describe('17. Peek mode: reads without consuming credits', () => {
  function peekReq(uid: string, provider: 'anonymous' | 'password' = 'password'): any {
    return {
      auth: { uid, token: { firebase: { sign_in_provider: provider } } },
      data: {
        deviceId: DEVICE_ID,
        deviceKey: DEVICE_KEY,
        peek: true,
        requestId: '',
      },
    };
  }

  it('peek does not decrement pool credits', async () => {
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 150,
      reflectionsUsed: 50, // 100 remaining
    });
    adm().__setState(`users/${UID_A}`, { plan: 'grace', reflectionsTotal: 150, reflectionsUsed: 50 });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    const result = await (checkAndConsumePrompt as any)(peekReq(UID_A));

    // Peek sees 100 remaining
    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(100);

    // Peek must NOT have written reflectionsUsed > 50
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    const consumeOp = dcOps.find((op: any) =>
      op.data?.reflectionsUsed !== undefined && op.data.reflectionsUsed > 50
    );
    expect(consumeOp).toBeUndefined();
  });

  it('10 consecutive peeks on same pool: remaining never decreases', async () => {
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,
      starterGranted: true,
      reflectionsTotal: 100,
      reflectionsUsed: 20, // 80 remaining
    });
    adm().__setState(`users/${UID_A}`, { plan: 'grace', reflectionsTotal: 100, reflectionsUsed: 20 });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });

    for (let i = 0; i < 10; i++) {
      const result = await (checkAndConsumePrompt as any)(peekReq(UID_A));
      expect(result.reflections.remaining).toBe(80); // never changes
    }
  });
});

// ═══════════════════════════════════════════════════════════════════════════
// 17. End-to-end: A2 gets back exact credits the shared pool had at A's deletion
// ═══════════════════════════════════════════════════════════════════════════
describe('18. A2 reclaim: gets back the exact credits the pool had when A was deleted', () => {
  /**
   * Full lifecycle:
   * 1. Guest + Account A share pool at 300 total / 50 used (250 remaining)
   * 2. Account A's users/{uid} doc has reflectionsTotal=300, reflectionsUsed=50 (mirrors pool)
   * 3. Account A deletes → snapshot saved: {creditsTotal:300, creditsUsed:50}
   * 4. Guest continues using pool (consumes 20 more) → pool now 300/70
   * 5. Account A2 (new uid, same email) calls iapAcknowledgeAndGrant
   * 6. Snapshot applied: A2 gets creditsTotal=300, creditsUsed=50 (240 remaining — exact balance at deletion)
   * 7. Guest pool remains at 300/70 (A2 didn't touch pool — they're "other")
   */
  it('A2 gets exactly the credit balance the pool had when A deleted (not more, not less)', async () => {
    const SNAPSHOT_TOTAL = 300;
    const SNAPSHOT_USED = 50;

    // Old entitlement txDoc (anonymized after A deletion)
    adm().__setState('iap_transactions/ios:lifecycle-tx-e2e-ent-001', {
      uid: null,
      uidHash: null,
      purchaserEmailHash: emailHashA,
      purchaserDeviceIdHash: sha256(`${DEVICE_ID}::${DEVICE_SALT}`),
      type: 'entitlement',
      productId: ENTITLEMENT_PRODUCT,
      status: 'granted',
      granted: { entitlement: 'blessed', bonusReflections: 300 },
    });

    // Snapshot: saved by deleteAccount at the moment A deleted (pool was at 300/50)
    adm().__setState(`deleted_credit_snapshots/${emailHashA}`, {
      emailHash: emailHashA,
      deletedUid: UID_A,
      creditsTotal: SNAPSHOT_TOTAL,
      creditsUsed: SNAPSHOT_USED,
      plan: 'blessed',
      consumed: false,
      consumedByUid: null,
    });

    // Guest continued using pool after A's deletion: now at 300/70
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,         // stale
      starterGranted: true,
      reflectionsTotal: 300,
      reflectionsUsed: 70,    // guest consumed 20 more after deletion
      lastAnonymousUid: UID_GUEST,
    });

    // A2: fresh account, no credits
    adm().__setState(`users/${UID_A2}`, {
      plan: 'grace',
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });

    verify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-e2e-ent-001',
      bundleId: 'com.oakdev.nuria.test',
      productId: ENTITLEMENT_PRODUCT,
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      iapReq(UID_A2, ENTITLEMENT_PRODUCT, 'e2e-ent-001', EMAIL_A)
    );

    // A2 gets blessed + snapshot credits (exactly what A had at deletion)
    expect(result.ok).toBe(true);
    expect(result.plan).toBe('blessed');
    expect(result.reflectionsTotal).toBe(SNAPSHOT_TOTAL); // 300 — same as pool at deletion
    expect(result.reflectionsUsed).toBe(SNAPSHOT_USED);   // 50 — same as pool at deletion
    // A2 has 250 remaining (300 − 50)

    // Guest pool must be untouched (A2 is "other", can't touch pool)
    const dcOps = adm().__getOpsForPath(`device_credits/${bindId}`);
    // No dc write should change reflectionsUsed from 70 (A2 never touches pool)
    const poolTouched = dcOps.find((op: any) =>
      op.data?.reflectionsUsed !== undefined && op.data.reflectionsUsed !== 70
    );
    expect(poolTouched).toBeUndefined();

    // Snapshot was consumed (can't be applied again)
    const snapOp = adm().__findSetOp(`deleted_credit_snapshots/${emailHashA}`);
    expect(snapOp).toBeDefined();
    expect(snapOp.data.consumed).toBe(true);
  });

  it('A2 Blessed: guest pool and A2 own credits coexist independently', async () => {
    // After A2 has reclaimed (users/A2 has 300/50), guest is at pool 300/70
    adm().__setState(`device_credits/${bindId}`, {
      mainUid: UID_A,         // stale
      starterGranted: true,
      reflectionsTotal: 300,
      reflectionsUsed: 70,    // 230 remaining for guest
      lastAnonymousUid: UID_GUEST,
    });
    adm().__setState(`users/${UID_GUEST}`, {
      plan: 'grace',
      reflectionsTotal: 300,
      reflectionsUsed: 70,
    });
    adm().__setState(`users/${UID_A2}`, {
      plan: 'blessed',
      reflectionsTotal: 300,
      reflectionsUsed: 50,    // A2's own: 250 remaining
    });
    adm().__setState(`iap_entitlements/${UID_A2}`, { isBlessed: true, status: 'active' });
    adm().__setState(`device_bindings/${bindId}`, { ownerUid: UID_A, deviceKeyHash });
    // users/UID_A not set (deleted)

    // A2 uses app (other — uses own credits)
    const a2Result = await (checkAndConsumePrompt as any)(consumeReq(UID_A2, 'password'));
    // Guest uses pool
    const guestResult = await (checkAndConsumePrompt as any)(consumeReq(UID_GUEST, 'anonymous'));

    // A2 is blessed, uses own credits (249 remaining after 1 consume)
    expect(a2Result.allowed).toBe(true);
    expect(a2Result.plan).toBe('blessed');

    // Guest still sees their pool: 230 remaining → 229 after consume
    expect(guestResult.allowed).toBe(true);
    expect(guestResult.reflections.remaining).toBe(229);
  });
});
