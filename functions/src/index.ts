/* eslint-disable max-len */
/* eslint-disable object-curly-spacing */
/* eslint-disable @typescript-eslint/no-explicit-any */

import * as admin from "firebase-admin";

// ✅ Safe initialize (prevents double-init in emulator / hot reload)
if (!admin.apps.length) {
  admin.initializeApp();
}

// ─────────────────────────────────────────────
// USAGE / BALANCE
// ─────────────────────────────────────────────
export { checkAndConsumePrompt } from "./usage/checkAndConsumePrompt";

// ─────────────────────────────────────────────
// IN-APP PURCHASES
// ─────────────────────────────────────────────
export { iapAcknowledgeAndGrant } from "./iap/iapAcknowledgeAndGrant";
export { restoreDevicePurchases } from "./iap/restoreDevicePurchases";
export { restoreAccountPurchases } from "./iap/restoreAccountPurchases";
export { appleAuthProbe } from "./iap/apple/appleAuthProbe";
export { appleAuthProbeHttp } from "./iap/appleAuthProbeHttp";

// ─────────────────────────────────────────────
// USER / ACCOUNT
// ─────────────────────────────────────────────
export { ensureUserDefaults } from "./auth/ensureUserDefaults";
export { deleteAccount } from "./account/deleteAccount";

// ─────────────────────────────────────────────
// AI GENERATION
// ─────────────────────────────────────────────
export { generateMessage } from "./ai/generateMessage";

