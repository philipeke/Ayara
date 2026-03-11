/**
 * check-consume.test.ts
 *
 * Tests for checkAndConsumePrompt Cloud Function — the core usage/credit logic.
 *
 * Key scenarios:
 *  - ALL accounts on a device share the credit pool (no "Other" path)
 *  - Anonymous (guest) → shares pool
 *  - uid === mainUid → shares pool
 *  - uid ≠ mainUid → also shares pool (resolved via poolRef / homePoolId)
 *  - Starter grant (150 reflections) on first access
 *  - Starter grant blocked by hardware marker (Android reinstall)
 *  - Blessed user → always allowed even with 0 credits
 *  - Grace user with credits → allowed, credits decremented
 *  - Grace user with 0 credits → denied (reflections_exhausted)
 *  - Peek mode → no consumption, just reads
 *  - Device key mismatch → denied with device_key_mismatch
 *  - homePoolId: cross-device credit linking
 */

import * as crypto from 'crypto';

const DEVICE_SALT = 'test-device-salt';
const DEVICE_ID = 'consume-device-1';
const DEVICE_KEY = 'consume-device-key-1';
const HARDWARE_ID = 'android-id-12345';

const UID_MAIN = 'consume-main-user';
const UID_GUEST = 'consume-anon-user';
const UID_OTHER = 'consume-other-user';
const UID_DELETED = 'consume-deleted-main';

function sha256(s: string) {
  return crypto.createHash('sha256').update(s).digest('hex');
}

const bindId = sha256(`${DEVICE_ID}::${DEVICE_SALT}`);
const deviceKeyHash = sha256(`${DEVICE_KEY}::${DEVICE_SALT}`);
const hwBindingId = sha256(`hw::${HARDWARE_ID}::${DEVICE_SALT}`);

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
import { checkAndConsumePrompt } from '../../src/usage/checkAndConsumePrompt';

// ─── Helpers ────────────────────────────────────────────────────────────────
function getAdmin() {
  return jest.requireMock('firebase-admin') as any;
}

function makeConsumeReq(uid: string, provider = 'password', hw?: string): any {
  return {
    auth: {
      uid,
      token: { firebase: { sign_in_provider: provider } },
    },
    data: {
      deviceId: DEVICE_ID,
      deviceKey: DEVICE_KEY,
      ...(hw ? { hardwareId: hw } : {}),
      peek: false,
      requestId: `req-${Math.random().toString(36).slice(2)}`,
    },
  };
}

function makePeekReq(uid: string, provider = 'password', hw?: string): any {
  return {
    auth: {
      uid,
      token: { firebase: { sign_in_provider: provider } },
    },
    data: {
      deviceId: DEVICE_ID,
      deviceKey: DEVICE_KEY,
      ...(hw ? { hardwareId: hw } : {}),
      peek: true,
    },
  };
}

function setupDeviceCredits(mainUid: string | null, total: number, used: number, extra: any = {}) {
  getAdmin().__setState(`device_credits/${bindId}`, {
    mainUid,
    starterGranted: true,
    reflectionsTotal: total,
    reflectionsUsed: used,
    ...extra,
  });
}

function setupDeviceBinding(uid: string) {
  getAdmin().__setState(`device_bindings/${bindId}`, {
    ownerUid: uid,
    deviceKeyHash,
  });
}

function setupUser(uid: string, total: number, used: number, plan = 'basic', extra: any = {}) {
  getAdmin().__setState(`users/${uid}`, {
    plan,
    reflectionsTotal: total,
    reflectionsUsed: used,
    creditsTotal: total,
    creditsUsed: used,
    ...extra,
  });
}

// ─── Setup ──────────────────────────────────────────────────────────────────
beforeEach(() => {
  getAdmin().__reset();
});

// ══════════════════════════════════════════════════════════════════════════════
// Blessed user — always allowed
// ══════════════════════════════════════════════════════════════════════════════
describe('Blessed user', () => {
  it('allowed even with 0 credits in pool', async () => {
    setupDeviceCredits(UID_MAIN, 0, 0);
    setupDeviceBinding(UID_MAIN);
    getAdmin().__setState(`iap_entitlements/${UID_MAIN}`, {
      isPremium: true,
      status: 'active',
    });
    setupUser(UID_MAIN, 0, 0, 'premium');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    expect(result.allowed).toBe(true);
    expect(result.plan).toBe('premium');
  });

  it('testPremium flag on user doc also grants access', async () => {
    setupDeviceCredits(UID_MAIN, 0, 0);
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 0, 0, 'basic', { testPremium: true });

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    expect(result.allowed).toBe(true);
    expect(result.plan).toBe('premium');
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Grace user with credits — allowed, pool decremented
// ══════════════════════════════════════════════════════════════════════════════
describe('Grace user with credits', () => {
  it('allowed when pool has remaining credits, reflectionsUsed incremented by 1', async () => {
    setupDeviceCredits(UID_MAIN, 100, 50);
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 100, 50, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(49); // 100 - 51

    // device_credits pool must be incremented
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsUsed).toBe(51); // 50 + 1
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Grace user with 0 credits — denied
// ══════════════════════════════════════════════════════════════════════════════
describe('Grace user with 0 credits', () => {
  it('denied with reflections_exhausted reason', async () => {
    setupDeviceCredits(UID_MAIN, 100, 100); // used = total → 0 remaining
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 100, 100, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    expect(result.allowed).toBe(false);
    expect(result.reason).toBe('reflections_exhausted');
    expect(result.reflections.remaining).toBe(0);
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Main / Guest routing
// ══════════════════════════════════════════════════════════════════════════════
describe('Main vs Guest vs Other routing', () => {
  it('uid === mainUid → consumes from device_credits pool', async () => {
    setupDeviceCredits(UID_MAIN, 100, 40);
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 100, 40, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(59); // 100 - 41

    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsUsed).toBe(41);
  });

  it('anonymous (guest) → shares device_credits pool', async () => {
    setupDeviceCredits(UID_MAIN, 100, 20);
    setupDeviceBinding(UID_GUEST);
    setupUser(UID_GUEST, 100, 20, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_GUEST, 'anonymous'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(79); // 100 - 21

    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsUsed).toBe(21);
  });

  it('any account on same device shares pool — non-main uid reads and consumes from pool', async () => {
    // Shared pool: all accounts using same deviceId share device_credits/${bindId}
    setupDeviceCredits(UID_MAIN, 9999, 0);
    setupDeviceBinding(UID_OTHER);
    setupUser(UID_OTHER, 50, 20, 'basic'); // own users/{uid} is irrelevant — pool is source of truth

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_OTHER));

    // All accounts on same device share the pool
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(9999);
    expect(result.reflections.remaining).toBe(9998); // 9999 - 1 consumed

    // pool must be decremented
    const dcOp = getAdmin().__findSetOp(`device_credits/${bindId}`);
    expect(dcOp).toBeDefined();
    expect(dcOp.data.reflectionsUsed).toBe(1);
  });

  it('any account on same device reads from pool, not own users/{uid}', async () => {
    setupDeviceCredits(UID_MAIN, 9999, 0); // pool has tons
    setupDeviceBinding(UID_OTHER);
    setupUser(UID_OTHER, 50, 50, 'basic'); // own credits exhausted — but pool is shared

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_OTHER));

    // Pool has 9999 credits → allowed
    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(9999);
    expect(result.reflections.remaining).toBe(9998);
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Shared pool — all accounts on a device share credits
// ══════════════════════════════════════════════════════════════════════════════
describe('lastAnonymousUid recovery', () => {
  /**
   * Scenario:
   * 1. UID_GUEST was anonymous, used the device (lastAnonymousUid=UID_GUEST stored in device_credits)
   * 2. UID_DELETED was the mainUid but deleted their account (users/UID_DELETED gone)
   * 3. UID_GUEST upgraded to a real account (Firebase keeps same UID after upgrade)
   * 4. Now UID_GUEST (no longer anonymous) tries to access the pool
   * 5. Expected: reads from shared pool at device_credits/${bindId} → allowed
   */
  it('upgraded guest (uid === lastAnonymousUid) gets pool access after mainUid deletion', async () => {
    // device_credits: stale mainUid that was deleted, lastAnonymousUid=UID_GUEST
    getAdmin().__setState(`device_credits/${bindId}`, {
      mainUid: UID_DELETED,       // stale — account deleted
      lastAnonymousUid: UID_GUEST, // the anonymous user who upgraded
      starterGranted: true,
      reflectionsTotal: 100,
      reflectionsUsed: 30,
    });
    setupDeviceBinding(UID_GUEST);
    setupUser(UID_GUEST, 0, 0, 'basic');
    // users/UID_DELETED does NOT exist → simulates deleted account

    // UID_GUEST is now a real (non-anonymous) user
    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_GUEST, 'password'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(69); // 100 - 31 (pool access!)
  });

  /**
   * Any account using the same deviceId shares the pool — by design in the
   * shared-pool architecture. All accounts on a physical device share credits.
   */
  it('any account using same deviceId shares pool (all accounts are peers)', async () => {
    const UID_INTRUDER = 'intruder-user-zzz';

    getAdmin().__setState(`device_credits/${bindId}`, {
      mainUid: UID_DELETED,
      lastAnonymousUid: UID_GUEST,
      starterGranted: true,
      reflectionsTotal: 9999,
      reflectionsUsed: 0,
    });
    setupDeviceBinding(UID_INTRUDER);
    setupUser(UID_INTRUDER, 10, 0, 'basic');

    // users/UID_DELETED does NOT exist

    // In the shared-pool model: any account on the same device shares the pool
    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_INTRUDER, 'password'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(9999);
    expect(result.reflections.remaining).toBe(9998);
  });

  /**
   * Anonymous guest can still access pool after mainUid deletion
   * (isAnonymous=true → always isMainOrGuest, even with stale mainUid).
   */
  it('anonymous user keeps pool access after mainUid deletion', async () => {
    getAdmin().__setState(`device_credits/${bindId}`, {
      mainUid: UID_DELETED,
      lastAnonymousUid: UID_GUEST,
      starterGranted: true,
      reflectionsTotal: 80,
      reflectionsUsed: 10,
    });
    setupDeviceBinding(UID_GUEST);
    setupUser(UID_GUEST, 0, 0, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_GUEST, 'anonymous'));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(69); // 80 - 11 (pool access)
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Starter grant
// ══════════════════════════════════════════════════════════════════════════════
describe('Starter grant (150 reflections)', () => {
  it('first-time device with no credits gets 150 starter reflections', async () => {
    // No device_credits, no device_starters → brand new device
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 0, 0, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);
    expect(result.reflections.remaining).toBe(149); // 150 - 1 consumed

    // device_starters must have been written
    const starterOp = getAdmin().__findSetOp(`device_starters/${bindId}`);
    expect(starterOp).toBeDefined();
  });

  it('starter NOT granted if device_starters already exists (reinstall block)', async () => {
    // Simulate: device_starters exists (already got starter)
    getAdmin().__setState(`device_starters/${bindId}`, {
      ownerUid: 'some-old-user',
      grantedAt: null,
    });
    // device_credits: starterGranted=true — this is what the function actually reads
    // when dc doc exists (it uses dc.starterGranted, NOT starterSnap.exists)
    getAdmin().__setState(`device_credits/${bindId}`, {
      mainUid: UID_MAIN,
      starterGranted: true, // already granted — blocks a second grant
      reflectionsTotal: 0,
      reflectionsUsed: 0,
    });
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 0, 0, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    // No starter granted (starterGranted=true blocks it) → 0 credits → denied
    expect(result.allowed).toBe(false);
    expect(result.reason).toBe('reflections_exhausted');

    // device_starters must NOT have been written again
    const starterOps = getAdmin().__getOpsForPath(`device_starters/${bindId}`);
    expect(starterOps.length).toBe(0);
  });

  it('hardware-level starter block prevents starter on Android reinstall', async () => {
    // No install-level starter marker, but hardware-level exists (ANDROID_ID reused)
    getAdmin().__setState(`device_starters/${hwBindingId}`, {
      ownerUid: 'old-user',
      grantedAt: null,
      hardwareBindingId: hwBindingId,
    });
    // Fresh install: no device_credits, no install-level device_starters
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 0, 0, 'basic');

    const result = await (checkAndConsumePrompt as any)(
      makeConsumeReq(UID_MAIN, 'password', HARDWARE_ID)
    );

    // No starter granted due to hardware block
    expect(result.allowed).toBe(false);
    expect(result.reason).toBe('reflections_exhausted');

    // hardware starter must NOT be duplicated
    const hwOps = getAdmin().__getOpsForPath(`device_starters/${hwBindingId}`);
    expect(hwOps.length).toBe(0);
  });

  it('starter IS granted on new hardware (fresh Android install, no prior hardware marker)', async () => {
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 0, 0, 'basic');
    // No device_starters for either bindId or hwBindingId

    const result = await (checkAndConsumePrompt as any)(
      makeConsumeReq(UID_MAIN, 'password', HARDWARE_ID)
    );

    expect(result.allowed).toBe(true);
    expect(result.reflections.total).toBe(150);

    // Both install-level and hardware-level starters written
    const installStarter = getAdmin().__findSetOp(`device_starters/${bindId}`);
    const hwStarter = getAdmin().__findSetOp(`device_starters/${hwBindingId}`);
    expect(installStarter).toBeDefined();
    expect(hwStarter).toBeDefined();
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Peek mode
// ══════════════════════════════════════════════════════════════════════════════
describe('Peek mode', () => {
  it('peek=true returns state without consuming a credit', async () => {
    setupDeviceCredits(UID_MAIN, 100, 50);
    setupDeviceBinding(UID_MAIN);
    setupUser(UID_MAIN, 100, 50, 'basic');

    const result = await (checkAndConsumePrompt as any)(makePeekReq(UID_MAIN));

    expect(result.allowed).toBe(true);
    expect(result.reflections.remaining).toBe(50); // unchanged (100 - 50)

    // device_credits must NOT have reflectionsUsed incremented
    const dcOps = getAdmin().__getOpsForPath(`device_credits/${bindId}`);
    const consumeOp = dcOps.find((op: any) => op.data?.reflectionsUsed === 51);
    expect(consumeOp).toBeUndefined();
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Device key mismatch
// ══════════════════════════════════════════════════════════════════════════════
describe('Device key mismatch', () => {
  it('returns device_key_mismatch when deviceKeyHash does not match stored', async () => {
    // binding has a DIFFERENT device key stored
    const wrongKeyHash = sha256(`wrong-key::${DEVICE_SALT}`);
    getAdmin().__setState(`device_bindings/${bindId}`, {
      ownerUid: UID_MAIN,
      deviceKeyHash: wrongKeyHash, // mismatch!
    });
    setupDeviceCredits(UID_MAIN, 100, 0);
    setupUser(UID_MAIN, 100, 0, 'basic');

    const result = await (checkAndConsumePrompt as any)(makeConsumeReq(UID_MAIN));

    expect(result.allowed).toBe(false);
    expect(result.reason).toBe('device_key_mismatch');
  });
});

// ══════════════════════════════════════════════════════════════════════════════
// Missing deviceKey → HttpsError
// ══════════════════════════════════════════════════════════════════════════════
describe('Missing required fields', () => {
  it('missing deviceId → HttpsError invalid-argument', async () => {
    await expect(
      (checkAndConsumePrompt as any)({
        auth: { uid: UID_MAIN, token: { firebase: { sign_in_provider: 'password' } } },
        data: { deviceKey: DEVICE_KEY, peek: false },
      })
    ).rejects.toMatchObject({ code: 'invalid-argument' });
  });

  it('missing deviceKey → HttpsError invalid-argument', async () => {
    await expect(
      (checkAndConsumePrompt as any)({
        auth: { uid: UID_MAIN, token: { firebase: { sign_in_provider: 'password' } } },
        data: { deviceId: DEVICE_ID, peek: false },
      })
    ).rejects.toMatchObject({ code: 'invalid-argument' });
  });

  it('unauthenticated request → HttpsError unauthenticated', async () => {
    await expect(
      (checkAndConsumePrompt as any)({
        auth: null,
        data: { deviceId: DEVICE_ID, deviceKey: DEVICE_KEY, peek: false },
      })
    ).rejects.toMatchObject({ code: 'unauthenticated' });
  });
});
