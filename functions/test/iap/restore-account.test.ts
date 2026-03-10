/**
 * restore-account.test.ts
 *
 * Tests for restoreAccountPurchases Cloud Function.
 *
 * Key scenarios:
 *  - Normal restore of consumable to device pool (main/guest)
 *  - Idempotency: skip if bindId already in restoredToBindings (Fix 1)
 *  - Restore to own user credits for "other" accounts
 *  - No transactions → returns zero
 *  - Multiple transactions, partial restore
 */

import * as crypto from 'crypto';

const DEVICE_SALT = 'test-device-salt';
const IAP_LEDGER_SALT = 'test-iap-salt';

const DEVICE_ID = 'restore-device-1';
const UID_MAIN = 'restore-user-main';
const UID_OTHER_DEVICE = 'restore-user-other-device';

function sha256(s: string) {
  return crypto.createHash('sha256').update(s).digest('hex');
}

const bindId = sha256(`${DEVICE_ID}::${DEVICE_SALT}`);
const uidHash = sha256(`${UID_MAIN}::${IAP_LEDGER_SALT}`);

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

// ─── Import ─────────────────────────────────────────────────────────────────
import { restoreAccountPurchases } from '../../src/iap/restoreAccountPurchases';

// ─── Helpers ────────────────────────────────────────────────────────────────
function getAdmin() {
  return jest.requireMock('firebase-admin') as any;
}

function makeReq(uid = UID_MAIN, deviceId = DEVICE_ID): any {
  return {
    auth: {
      uid,
      token: { firebase: { sign_in_provider: 'password' } },
    },
    data: { deviceId },
  };
}

function setupMainDeviceCredits(uid = UID_MAIN, total = 500, used = 200) {
  getAdmin().__setState(`device_credits/${bindId}`, {
    mainUid: uid,
    starterGranted: true,
    reflectionsTotal: total,
    reflectionsUsed: used,
  });
}

/** Create a consumable tx in Firestore state */
function addTxDoc(txId: string, credits: number, alreadyRestoredToBindings: string[] = []) {
  getAdmin().__setState(`iap_transactions/${txId}`, {
    uidHash,
    type: 'consumable',
    status: 'granted',
    productId: 'ayara_reflections_100',
    granted: { reflections: credits },
    restoredToBindings: alreadyRestoredToBindings,
  });
}

// ─── Setup ──────────────────────────────────────────────────────────────────
beforeEach(() => {
  getAdmin().__reset();
});

// ══════════════════════════════════════════════════════════════════════════════
// No transactions
// ══════════════════════════════════════════════════════════════════════════════
describe('restoreAccountPurchases: no transactions', () => {
  it('returns ok=true, creditsRestored=0 when no iap_transactions found', async () => {
    setupMainDeviceCredits();
    // No tx docs in state → query returns empty

    const result = await (restoreAccountPurchases as any)(makeReq());

    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(0);
    expect(result.results).toHaveLength(0);
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Fix 1: Idempotency — skip if bindId already in restoredToBindings
// ══════════════════════════════════════════════════════════════════════════════
describe('Fix 1 — restoreAccountPurchases idempotency', () => {
  it('skips txDoc where this device bindId is already in restoredToBindings', async () => {
    setupMainDeviceCredits();
    addTxDoc('ios:tx-restore-001', 100, [bindId]); // already restored to this device

    const result = await (restoreAccountPurchases as any)(makeReq());

    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(0);
    expect(result.results[0].action).toBe('skip_already_restored_to_this_device');
  });

  it('restores txDoc where restoredToBindings is empty', async () => {
    setupMainDeviceCredits(UID_MAIN, 500, 200);
    addTxDoc('ios:tx-restore-002', 100, []); // NOT yet restored to this device

    const result = await (restoreAccountPurchases as any)(makeReq());

    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(100);
    expect(result.results[0].action).toBe('restored_consumable');
    expect(result.results[0].credits).toBe(100);
  });

  it('restores txDoc where restoredToBindings has OTHER device bindIds (not this device)', async () => {
    setupMainDeviceCredits(UID_MAIN, 500, 200);
    const otherBindId = sha256(`other-device-id::${DEVICE_SALT}`);
    addTxDoc('ios:tx-restore-003', 200, [otherBindId]); // restored to OTHER device, not this one

    const result = await (restoreAccountPurchases as any)(makeReq());

    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(200);
    expect(result.results[0].action).toBe('restored_consumable');
  });

  it('arrayUnion(bindId) is written to txDoc after restore', async () => {
    setupMainDeviceCredits(UID_MAIN, 500, 200);
    addTxDoc('ios:tx-restore-004', 100, []);

    await (restoreAccountPurchases as any)(makeReq());

    // The tx doc should have received an arrayUnion write for bindId
    const txOp = getAdmin().__findSetOp('iap_transactions/ios:tx-restore-004');
    expect(txOp).toBeDefined();
    expect(txOp.data.restoredToBindings).toEqual({ __type: 'arrayUnion', items: [bindId] });
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Routing: all accounts on same device share pool
// ══════════════════════════════════════════════════════════════════════════════
describe('restoreAccountPurchases: main/guest vs other routing', () => {
  it('main account restore goes to device_credits pool', async () => {
    setupMainDeviceCredits(UID_MAIN, 500, 200); // pool at 500 total
    addTxDoc('ios:tx-route-001', 100, []);

    await (restoreAccountPurchases as any)(makeReq(UID_MAIN));

    // device_credits should have been updated
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(600); // 500 + 100
  });

  it('any account on same device restores to shared pool (all accounts share pool)', async () => {
    const UID_OTHER = 'other-account-eee';

    // device_credits at same bindId (same deviceId) — shared pool for all accounts on device
    getAdmin().__setState(`device_credits/${bindId}`, {
      mainUid: UID_MAIN,
      starterGranted: true,
      reflectionsTotal: 9999,
      reflectionsUsed: 0,
    });

    // UID_OTHER has their own user doc (no homePoolId → resolves to local pool)
    getAdmin().__setState(`users/${UID_OTHER}`, {
      plan: 'blessed',
      reflectionsTotal: 100,
      reflectionsUsed: 50,
    });

    const otherUidHash2 = sha256(`${UID_OTHER}::${IAP_LEDGER_SALT}`);

    // Add tx belonging to UID_OTHER
    getAdmin().__setState('iap_transactions/ios:tx-route-002', {
      uidHash: otherUidHash2,
      type: 'consumable',
      status: 'granted',
      productId: 'ayara_reflections_100',
      granted: { reflections: 100 },
      restoredToBindings: [],
    });

    const req = {
      auth: {
        uid: UID_OTHER,
        token: { firebase: { sign_in_provider: 'password' } },
      },
      data: { deviceId: DEVICE_ID },
    };

    const result = await (restoreAccountPurchases as any)(req);

    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(100);

    // device_credits pool IS updated (all accounts on same device share pool)
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(10099); // 9999 + 100
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Multiple transactions
// ══════════════════════════════════════════════════════════════════════════════
describe('restoreAccountPurchases: multiple transactions', () => {
  it('restores all not-yet-restored txDocs, skips already-restored ones', async () => {
    setupMainDeviceCredits(UID_MAIN, 0, 0);

    // tx1: already restored → skip
    addTxDoc('ios:tx-multi-001', 100, [bindId]);
    // tx2: not restored → grant
    addTxDoc('ios:tx-multi-002', 200, []);
    // tx3: not restored → grant
    addTxDoc('ios:tx-multi-003', 400, []);

    const result = await (restoreAccountPurchases as any)(makeReq());

    expect(result.ok).toBe(true);
    expect(result.creditsRestored).toBe(600); // 200 + 400
    expect(result.results.filter((r: any) => r.action === 'skip_already_restored_to_this_device')).toHaveLength(1);
    expect(result.results.filter((r: any) => r.action === 'restored_consumable')).toHaveLength(2);
  });

  it('returns total credits summed across all restored txDocs', async () => {
    setupMainDeviceCredits(UID_MAIN, 0, 0);
    addTxDoc('ios:tx-sum-001', 100, []);
    addTxDoc('ios:tx-sum-002', 200, []);
    addTxDoc('ios:tx-sum-003', 400, []);

    const result = await (restoreAccountPurchases as any)(makeReq());

    expect(result.creditsRestored).toBe(700); // 100 + 200 + 400
  });
});
