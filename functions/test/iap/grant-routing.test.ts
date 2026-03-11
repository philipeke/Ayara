/**
 * grant-routing.test.ts
 *
 * Tests for iapAcknowledgeAndGrant credit routing logic:
 *  - All accounts on same device share pool (no "other" path)
 *  - Main account → device pool updated
 *  - Anonymous account → treated as guest → device pool updated
 *  - Consumable requires active blessed entitlement
 *  - Already-granted transaction returns alreadyGranted=true
 *  - Cross-account TX_ALREADY_USED_BY_OTHER_ACCOUNT guard
 */

import * as crypto from 'crypto';

const DEVICE_SALT = 'test-device-salt';
const IAP_LEDGER_SALT = 'test-iap-salt';
const DEVICE_ID = 'routing-device-1';
const DEVICE_KEY = 'routing-device-key-1';
const UID_MAIN = 'routing-main-user';
const UID_GUEST = 'routing-anon-user';
const UID_OTHER = 'routing-other-user';

function sha256(s: string) {
  return crypto.createHash('sha256').update(s).digest('hex');
}

const bindId = sha256(`${DEVICE_ID}::${DEVICE_SALT}`);
const deviceKeyHash = sha256(`${DEVICE_KEY}::${DEVICE_SALT}`);
const mainUidHash = sha256(`${UID_MAIN}::${IAP_LEDGER_SALT}`);
const otherUidHash = sha256(`${UID_OTHER}::${IAP_LEDGER_SALT}`);

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

// ─── Imports ────────────────────────────────────────────────────────────────
import { iapAcknowledgeAndGrant } from '../../src/iap/iapAcknowledgeAndGrant';

// ─── Helpers ────────────────────────────────────────────────────────────────
function getAdmin() {
  return jest.requireMock('firebase-admin') as any;
}
function getVerify() {
  return jest.requireMock('../../src/iap/_verify') as any;
}

function makeReq(uid: string, productId: string, txSuffix = '001', provider = 'password', email = 'user@test.com'): any {
  return {
    auth: {
      uid,
      token: { firebase: { sign_in_provider: provider }, email },
    },
    data: {
      platform: 'ios',
      productId,
      deviceId: DEVICE_ID,
      payload: { transactionId: `tx-routing-${txSuffix}` },
    },
  };
}

function setupEntitlement(uid: string) {
  getAdmin().__setState(`iap_entitlements/${uid}`, { isPremium: true, status: 'active' });
}

function setupUser(uid: string, total = 300, used = 100, plan = 'premium') {
  getAdmin().__setState(`users/${uid}`, {
    plan,
    reflectionsTotal: total,
    reflectionsUsed: used,
    creditsTotal: total,
    creditsUsed: used,
  });
}

function setupDeviceCredits(mainUid: string, total = 300, used = 100) {
  getAdmin().__setState(`device_credits/${bindId}`, {
    mainUid,
    starterGranted: true,
    reflectionsTotal: total,
    reflectionsUsed: used,
  });
}

function setupDeviceBinding(uid: string) {
  getAdmin().__setState(`device_bindings/${bindId}`, {
    ownerUid: uid,
    deviceKeyHash,
  });
}

beforeEach(() => {
  getAdmin().__reset();

  getVerify().verifyAppleOrThrow.mockResolvedValue({
    environment: 'Sandbox',
    originalTransactionId: 'orig-routing-001',
    bundleId: 'com.oakdev.ayara.test',
    productId: 'ayara_reflections_100',
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Consumable routing: main vs other
// ══════════════════════════════════════════════════════════════════════════════
describe('Consumable grant routing', () => {
  it('main account consumable → device_credits pool updated by +100', async () => {
    setupEntitlement(UID_MAIN);
    setupUser(UID_MAIN, 300, 100);
    setupDeviceCredits(UID_MAIN, 300, 100);
    setupDeviceBinding(UID_MAIN);

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_MAIN, 'ayara_reflections_100', '001')
    );

    expect(result.ok).toBe(true);

    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(400); // 300 + 100
  });

  it('any account on same device consumable → shared pool updated', async () => {
    setupEntitlement(UID_OTHER);
    setupUser(UID_OTHER, 300, 100);
    setupDeviceCredits(UID_MAIN, 9999, 0); // shared pool on same device
    setupDeviceBinding(UID_OTHER);

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-routing-002',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'ayara_reflections_100',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_OTHER, 'ayara_reflections_100', '002', 'password', 'other@test.com')
    );

    expect(result.ok).toBe(true);

    // All accounts on same device share pool → pool IS updated
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(10099); // 9999 + 100
  });

  it('anonymous (guest) consumable → treated as main/guest → device_credits pool updated', async () => {
    // Anonymous user — no mainUid needed (isAnonymous=true → always isMainOrGuest)
    setupEntitlement(UID_GUEST);
    setupUser(UID_GUEST, 300, 100, 'premium');
    getAdmin().__setState(`device_credits/${bindId}`, {
      mainUid: null, // no mainUid yet
      starterGranted: true,
      reflectionsTotal: 300,
      reflectionsUsed: 100,
    });
    setupDeviceBinding(UID_GUEST);

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-routing-003',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'ayara_reflections_100',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_GUEST, 'ayara_reflections_100', '003', 'anonymous', '')
    );

    expect(result.ok).toBe(true);

    // device_credits must be updated for anonymous (guest) users
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(400); // 300 + 100
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Consumable guards
// ══════════════════════════════════════════════════════════════════════════════
describe('Consumable guards', () => {
  it('consumable rejected without active blessed entitlement', async () => {
    setupUser(UID_MAIN, 300, 100, 'basic'); // NOT blessed
    setupDeviceCredits(UID_MAIN);
    setupDeviceBinding(UID_MAIN);
    // NO entitlement doc set

    await expect(
      (iapAcknowledgeAndGrant as any)(makeReq(UID_MAIN, 'ayara_reflections_100'))
    ).rejects.toMatchObject({ code: 'failed-precondition', message: 'TOPUP_REQUIRES_BLESSED' });
  });

  it('consumable rejected with expired/inactive entitlement', async () => {
    getAdmin().__setState(`iap_entitlements/${UID_MAIN}`, {
      isPremium: true,
      status: 'expired', // not 'active'
    });
    setupUser(UID_MAIN, 300, 100, 'basic');
    setupDeviceCredits(UID_MAIN);
    setupDeviceBinding(UID_MAIN);

    await expect(
      (iapAcknowledgeAndGrant as any)(makeReq(UID_MAIN, 'ayara_reflections_100'))
    ).rejects.toMatchObject({ code: 'failed-precondition', message: 'TOPUP_REQUIRES_BLESSED' });
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Idempotency: already-granted tx
// ══════════════════════════════════════════════════════════════════════════════
describe('Already-granted transaction idempotency', () => {
  it('consumable already granted to same account → alreadyGranted=true, no double credit', async () => {
    setupEntitlement(UID_MAIN);
    setupUser(UID_MAIN, 400, 100);
    setupDeviceCredits(UID_MAIN);
    setupDeviceBinding(UID_MAIN);

    // txDoc already granted to this account (Firestore path = collection/docId)
    getAdmin().__setState('iap_transactions/ios:tx-routing-001', {
      uidHash: mainUidHash,
      productId: 'ayara_reflections_100',
      status: 'granted',
      type: 'consumable',
      granted: { reflections: 100 },
      restoredToBindings: [bindId],
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_MAIN, 'ayara_reflections_100')
    );

    expect(result.ok).toBe(true);
    expect(result.alreadyGranted).toBe(true);
    // No additional credits should be written
    const dcOps = getAdmin().__getOpsForPath(`device_credits/${bindId}`);
    expect(dcOps.length).toBe(0);
  });

  it('consumable already granted to DIFFERENT account → HttpsError TX_ALREADY_USED_BY_OTHER_ACCOUNT', async () => {
    setupEntitlement(UID_MAIN);
    setupUser(UID_MAIN, 300, 100);
    setupDeviceCredits(UID_MAIN);
    setupDeviceBinding(UID_MAIN);

    // txDoc owned by OTHER account (Firestore path = collection/docId)
    getAdmin().__setState('iap_transactions/ios:tx-routing-001', {
      uidHash: otherUidHash, // different user
      productId: 'ayara_reflections_100',
      status: 'granted',
      type: 'consumable',
      granted: { reflections: 100 },
    });

    await expect(
      (iapAcknowledgeAndGrant as any)(makeReq(UID_MAIN, 'ayara_reflections_100'))
    ).rejects.toMatchObject({
      code: 'failed-precondition',
      message: 'TX_ALREADY_USED_BY_OTHER_ACCOUNT',
    });
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Entitlement routing
// ══════════════════════════════════════════════════════════════════════════════
describe('Entitlement grant routing', () => {
  it('fresh entitlement: bonus 300 goes to device_credits pool for main account', async () => {
    setupUser(UID_MAIN, 0, 0, 'basic');
    setupDeviceCredits(UID_MAIN, 0, 0);
    setupDeviceBinding(UID_MAIN);

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-ent-001',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'com.oakdev.ayara.premium',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_MAIN, 'com.oakdev.ayara.premium', '004')
    );

    expect(result.ok).toBe(true);
    expect(result.plan).toBe('premium');
    expect(result.reflectionsTotal).toBe(300);

    // device_credits pool should get +300
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(300); // 0 + 300
  });

  it('any account on same device entitlement: bonus goes to shared pool', async () => {
    setupUser(UID_OTHER, 0, 0, 'basic');
    setupDeviceCredits(UID_MAIN, 9999, 0); // shared pool on same device
    setupDeviceBinding(UID_OTHER);

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-ent-002',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'com.oakdev.ayara.premium',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_OTHER, 'com.oakdev.ayara.premium', '005', 'password', 'other@test.com')
    );

    expect(result.ok).toBe(true);
    expect(result.plan).toBe('premium');

    // All accounts on same device share pool → entitlement bonus goes to shared pool
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsTotal).toBe(10299); // 9999 + 300 bonus
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Pool-response fix: response must reflect pool balance, not stale users/{uid}
// (checkAndConsumePrompt no longer writes pool values to users/{uid})
// ══════════════════════════════════════════════════════════════════════════════
describe('Pool-response fix: response uses pool balance for main/guest', () => {
  it('guest with 149 in pool but 0 in users/{uid}: fresh entitlement → response shows 449', async () => {
    // Pool is source of truth. users/{uid} has 0 because pool→user sync was removed.
    getAdmin().__setState(`device_credits/${bindId}`, {
      mainUid: null, // no mainUid → guest is main
      starterGranted: true,
      reflectionsTotal: 149,
      reflectionsUsed: 1,
    });
    // users/{uid} intentionally shows 0 (pool→user sync removed)
    setupUser(UID_GUEST, 0, 0, 'basic');

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-pool-001',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'com.oakdev.ayara.premium',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_GUEST, 'com.oakdev.ayara.premium', 'pool-001', 'anonymous', '')
    );

    expect(result.ok).toBe(true);
    expect(result.plan).toBe('premium');
    // Must be 149 (pool) + 300 (bonus) = 449, NOT 0 + 300 = 300
    expect(result.reflectionsTotal).toBe(449);
    expect(result.reflectionsUsed).toBe(1);
    expect(result.reflectionsRemaining).toBe(448);
  });

  it('named main user with 149 in pool but 0 in users/{uid}: fresh entitlement → response shows 449', async () => {
    setupDeviceCredits(UID_MAIN, 149, 1);
    // users/{uid} intentionally shows 0 (pool→user sync removed)
    setupUser(UID_MAIN, 0, 0, 'basic');

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-pool-002',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'com.oakdev.ayara.premium',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_MAIN, 'com.oakdev.ayara.premium', 'pool-002')
    );

    expect(result.ok).toBe(true);
    expect(result.plan).toBe('premium');
    // Must be 149 (pool) + 300 (bonus) = 449, NOT 0 + 300 = 300
    expect(result.reflectionsTotal).toBe(449);
    expect(result.reflectionsUsed).toBe(1);
    expect(result.reflectionsRemaining).toBe(448);
  });

  it('already-granted entitlement: response reads pool (449), not stale users/{uid} (300)', async () => {
    // Scenario: first Restore wrote 300 to users/{uid} (stale, before fix was applied).
    // Pool correctly has 449. Second Restore should return 449, not 300.
    setupEntitlement(UID_MAIN);
    setupUser(UID_MAIN, 300, 1, 'premium'); // stale users/{uid} from before fix
    setupDeviceCredits(UID_MAIN, 449, 1);  // pool is the ground truth

    getAdmin().__setState('iap_transactions/ios:tx-routing-pool-003', {
      uidHash: mainUidHash,
      productId: 'com.oakdev.ayara.premium',
      status: 'granted',
      type: 'entitlement',
      granted: { entitlement: 'premium', bonusReflections: 300 },
    });

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-pool-003',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'com.oakdev.ayara.premium',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_MAIN, 'com.oakdev.ayara.premium', 'pool-003')
    );

    expect(result.ok).toBe(true);
    expect(result.alreadyGranted).toBe(true);
    expect(result.plan).toBe('premium');
    // Must return 449 (from pool), NOT 300 (from stale users/{uid})
    expect(result.reflectionsTotal).toBe(449);
    expect(result.reflectionsUsed).toBe(1);
    expect(result.reflectionsRemaining).toBe(448);
  });

  it('any account on same device: pool IS used for response balance', async () => {
    // All accounts share pool — response reflects pool balance, not own users/{uid}
    setupEntitlement(UID_OTHER);
    setupUser(UID_OTHER, 50, 10, 'premium');
    setupDeviceCredits(UID_MAIN, 9999, 0); // shared pool on same device

    getAdmin().__setState('iap_transactions/ios:tx-routing-pool-004', {
      uidHash: otherUidHash,
      productId: 'com.oakdev.ayara.premium',
      status: 'granted',
      type: 'entitlement',
      granted: { entitlement: 'premium', bonusReflections: 300 },
    });

    getVerify().verifyAppleOrThrow.mockResolvedValue({
      environment: 'Sandbox',
      originalTransactionId: 'orig-pool-004',
      bundleId: 'com.oakdev.ayara.test',
      productId: 'com.oakdev.ayara.premium',
    });

    const result = await (iapAcknowledgeAndGrant as any)(
      makeReq(UID_OTHER, 'com.oakdev.ayara.premium', 'pool-004', 'password', 'other@test.com')
    );

    expect(result.ok).toBe(true);
    expect(result.alreadyGranted).toBe(true);
    expect(result.plan).toBe('premium');
    // All accounts share pool — response reflects pool balance (9999/0)
    expect(result.reflectionsTotal).toBe(9999);
    expect(result.reflectionsUsed).toBe(0);
    expect(result.reflectionsRemaining).toBe(9999);
  });
});
