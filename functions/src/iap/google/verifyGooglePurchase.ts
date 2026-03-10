/* eslint-disable */
import { google } from "googleapis";
import { HttpsError } from "firebase-functions/v2/https";

function asString(v: any) {
  return typeof v === "string" ? v : v != null ? String(v) : "";
}

function asNumber(v: any) {
  const n = Number(v ?? 0);
  return Number.isFinite(n) ? n : 0;
}

type GoogleVerifyResult = {
  ok: boolean;
  purchaseState?: number; // 0 = purchased
  acknowledgementState?: number; // 0 = not acknowledged
  consumptionState?: number; // 0 = not consumed
  orderId?: string;
  purchaseTimeMillis?: number;
  kind?: string;
  raw?: any;
};

function getServiceAccountJson(): any {
  const raw = (process.env.GOOGLE_SERVICE_ACCOUNT_JSON ?? "").trim();
  if (!raw) {
    throw new HttpsError(
      "failed-precondition",
      "Missing GOOGLE_SERVICE_ACCOUNT_JSON",
    );
  }
  try {
    return JSON.parse(raw);
  } catch {
    throw new HttpsError(
      "failed-precondition",
      "Invalid GOOGLE_SERVICE_ACCOUNT_JSON (not valid JSON)",
    );
  }
}

function getPackageName(): string {
  const pkg = (process.env.GOOGLE_PLAY_PACKAGE_NAME ?? "").trim();
  if (!pkg) {
    throw new HttpsError(
      "failed-precondition",
      "Missing GOOGLE_PLAY_PACKAGE_NAME",
    );
  }
  return pkg;
}

async function getAndroidPublisher() {
  const sa = getServiceAccountJson();
  const clientEmail = asString(sa.client_email);
  const privateKey = asString(sa.private_key);

  if (!clientEmail || !privateKey) {
    throw new HttpsError(
      "failed-precondition",
      "Service account JSON missing client_email/private_key",
    );
  }

  const auth = new google.auth.JWT({
    email: clientEmail,
    key: privateKey,
    scopes: ["https://www.googleapis.com/auth/androidpublisher"],
  });

  const androidpublisher = google.androidpublisher({ version: "v3", auth });
  return androidpublisher;
}

/// Verify an INAPP (one-time / consumable / non-consumable) purchase token.
/// Uses purchases.products.get (not subscriptions).
export async function verifyGoogleProductPurchase(params: {
  productId: string;
  purchaseToken: string;
}): Promise<GoogleVerifyResult> {
  const productId = asString(params.productId);
  const token = asString(params.purchaseToken);
  if (!productId) throw new HttpsError("invalid-argument", "Missing productId");
  if (!token) throw new HttpsError("invalid-argument", "Missing purchaseToken");

  const packageName = getPackageName();
  const ap = await getAndroidPublisher();

  try {
    const res = await ap.purchases.products.get({
      packageName,
      productId,
      token,
    });

    const data: any = res.data ?? {};
    const purchaseState = asNumber(data.purchaseState);
    const acknowledgementState = asNumber(data.acknowledgementState);
    const consumptionState = asNumber(data.consumptionState);

    return {
      ok: true,
      purchaseState,
      acknowledgementState,
      consumptionState,
      orderId: asString(data.orderId || ""),
      purchaseTimeMillis: asNumber(data.purchaseTimeMillis),
      kind: asString(data.kind || ""),
      raw: data,
    };
  } catch (e: any) {
    // More actionable error surface (no behavior change, just clearer logs)
    const status = e?.code ?? e?.response?.status ?? null;
    const apiMsg =
      e?.response?.data?.error?.message ??
      e?.errors?.[0]?.message ??
      e?.message ??
      e?.toString?.() ??
      "Google verify error";

    throw new HttpsError(
      "failed-precondition",
      `Google verify failed (${status ?? "no_status"}): ${asString(apiMsg)}`,
    );
  }
}

/// For non-consumables: acknowledge if needed.
export async function acknowledgeGoogleProductPurchase(params: {
  productId: string;
  purchaseToken: string;
}): Promise<void> {
  const productId = asString(params.productId);
  const token = asString(params.purchaseToken);
  if (!productId) throw new HttpsError("invalid-argument", "Missing productId");
  if (!token) throw new HttpsError("invalid-argument", "Missing purchaseToken");

  const packageName = getPackageName();
  const ap = await getAndroidPublisher();

  await ap.purchases.products.acknowledge({
    packageName,
    productId,
    token,
    requestBody: {},
  });
}

/// For consumables: consume so the user can repurchase.
export async function consumeGoogleProductPurchase(params: {
  productId: string;
  purchaseToken: string;
}): Promise<void> {
  const productId = asString(params.productId);
  const token = asString(params.purchaseToken);
  if (!productId) throw new HttpsError("invalid-argument", "Missing productId");
  if (!token) throw new HttpsError("invalid-argument", "Missing purchaseToken");

  const packageName = getPackageName();
  const ap = await getAndroidPublisher();

  await ap.purchases.products.consume({
    packageName,
    productId,
    token,
  });
}