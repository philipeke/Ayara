/* eslint-disable */
import { HttpsError } from "firebase-functions/v2/https";

import { getAppleJwtDebugMeta } from "./apple/appleJwt";
import { verifyAppleTransaction } from "./apple/verifyAppleTransaction";
import { decodeAppleJwsPayload, asString } from "./_utils";
import { verifyGoogleProductPurchase } from "./google/verifyGooglePurchase";

export type AppleVerifyMeta = {
  environment: string | null;
  originalTransactionId: string | null;
  bundleId: string | null;
  productId: string | null;
};

export async function verifyAppleOrThrow(params: {
  transactionId: string;
  requestedProductId: string;
  expectedBundleId: string; // from env (may be "")
}): Promise<AppleVerifyMeta> {
  const transactionId = asString(params.transactionId).trim();
  const requestedProductId = asString(params.requestedProductId).trim();
  const expectedBundleId = asString(params.expectedBundleId).trim();

  const meta = getAppleJwtDebugMeta();
  console.log("[IAP] ios verify start", {
    transactionId,
    appleKeyId: meta.keyId,
    pkHash12: meta.pkHash12,
    bid: meta.bid,
  });

  const verify = await verifyAppleTransaction(transactionId);

  console.log("[IAP] ios verify result", {
    ok: verify.ok,
    status: verify.status,
    tried: verify.tried,
    reason: verify.reason,
    requestId: verify.requestId,
    hasSignedInfo: !!verify.signedTransactionInfo,
  });

  if (!verify.ok) {
    const rid = verify.requestId ? ` (Request ID: ${verify.requestId})` : "";
    throw new HttpsError(
      "failed-precondition",
      `Apple verify failed: ${verify.status ?? "unknown"} ${verify.reason ?? ""}${rid}`.trim(),
    );
  }

  const signedInfo = asString(verify.signedTransactionInfo || "").trim();
  if (!signedInfo) {
    throw new HttpsError("failed-precondition", "Apple verify missing signedTransactionInfo");
  }

  const appleDecoded = decodeAppleJwsPayload(signedInfo);
  if (!appleDecoded) {
    throw new HttpsError(
      "failed-precondition",
      "Apple verify returned invalid signedTransactionInfo payload",
    );
  }

  console.log("[IAP] appleDecoded fields", {
    productId: appleDecoded.productId,
    productType: appleDecoded.productType,
    type: appleDecoded.type,
    inAppOwnershipType: appleDecoded.inAppOwnershipType,
    originalTransactionId: appleDecoded.originalTransactionId,
    transactionId: appleDecoded.transactionId,
    environment: appleDecoded.environment,
    bundleId: appleDecoded.bundleId,
    keysSample: Object.keys(appleDecoded).slice(0, 30),
  });

  const appleEnvironment = asString(appleDecoded.environment || "").trim() || null;
  const appleOriginalTxId =
    asString(appleDecoded.originalTransactionId || "").trim() || null;
  const appleBundleId = asString(appleDecoded.bundleId || "").trim() || null;
  const appleProductId = asString(appleDecoded.productId || "").trim() || null;

  if (!appleProductId) {
    throw new HttpsError(
      "failed-precondition",
      "Apple verify: missing productId in signedTransactionInfo",
    );
  }

  // 🔒 HARD MATCH: productId
  if (appleProductId !== requestedProductId) {
    console.warn("[IAP] apple productId mismatch", {
      transactionId,
      requested: requestedProductId,
      apple: appleProductId,
      env: appleEnvironment,
      bundleId: appleBundleId,
    });
    throw new HttpsError("failed-precondition", "PRODUCT_ID_MISMATCH");
  }

  // 🔒 HARD MATCH: bundleId (om satt)
  if (expectedBundleId && appleBundleId && appleBundleId !== expectedBundleId) {
    console.warn("[IAP] apple bundleId mismatch", {
      transactionId,
      expected: expectedBundleId,
      apple: appleBundleId,
    });
    throw new HttpsError("failed-precondition", "BUNDLE_ID_MISMATCH");
  }

  return {
    environment: appleEnvironment,
    originalTransactionId: appleOriginalTxId,
    bundleId: appleBundleId,
    productId: appleProductId,
  };
}

export type GoogleVerifyMeta = {
  purchaseState: number | null;
  acknowledgementState: number | null;
  consumptionState: number | null;
  orderId: string | null;
};

/**
 * Wraps a promise with a hard timeout so Google API calls can never hang silently.
 */
async function withTimeout<T>(p: Promise<T>, ms: number, label: string): Promise<T> {
  let t: NodeJS.Timeout | null = null;
  try {
    return await Promise.race([
      p,
      new Promise<T>((_, reject) => {
        t = setTimeout(() => reject(new Error(`${label} timeout after ${ms}ms`)), ms);
      }),
    ]);
  } finally {
    if (t) clearTimeout(t);
  }
}

export async function verifyGoogleOrThrow(params: {
  productId: string;
  purchaseToken: string;
}): Promise<GoogleVerifyMeta> {
  const productId = asString(params.productId).trim();
  const purchaseToken = asString(params.purchaseToken).trim();

  if (!purchaseToken) {
    throw new HttpsError("invalid-argument", "Missing payload.purchaseToken");
  }

  const started = Date.now();
  console.log("[IAP] android verify start", {
    productId,
    tokenPrefix: purchaseToken.slice(0, 10),
    atMs: started,
  });

  let verify: any;
  try {
    // NOTE: keep this below your overall callable timeout.
    // Your function timeout is currently 25s; we'll patch that next.
    verify = await withTimeout(
      verifyGoogleProductPurchase({ productId, purchaseToken }),
      20_000,
      "verifyGoogleProductPurchase",
    );
  } catch (e: any) {
    const msg = asString(e?.message || e?.toString() || "Google verify error");
    const durMs = Date.now() - started;
    console.error("[IAP] android verify exception", {
      productId,
      durMs,
      msg,
    });
    throw new HttpsError("failed-precondition", `Google verify failed: ${msg}`);
  }

  const purchaseState = (verify.purchaseState ?? null) as number | null;
  const acknowledgementState = (verify.acknowledgementState ?? null) as number | null;
  const consumptionState = (verify.consumptionState ?? null) as number | null;
  const orderId = (verify.orderId ?? null) as string | null;

  const durMs = Date.now() - started;

  console.log("[IAP] android verify result", {
    ok: verify.ok,
    productId,
    purchaseState,
    acknowledgementState,
    consumptionState,
    orderId,
    durMs,
  });

  if (!verify.ok) {
    throw new HttpsError("failed-precondition", "Google verify failed");
  }

  // purchaseState: 0 == purchased
  if (purchaseState !== 0) {
    throw new HttpsError(
      "failed-precondition",
      `Google purchaseState not purchased: ${purchaseState}`,
    );
  }

  return { purchaseState, acknowledgementState, consumptionState, orderId };
}