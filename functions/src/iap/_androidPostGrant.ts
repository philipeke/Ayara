/* eslint-disable */
import { asString } from "./_utils";
import {
  acknowledgeGoogleProductPurchase,
  consumeGoogleProductPurchase,
} from "./google/verifyGooglePurchase";

export async function androidPostGrantBestEffort(params: {
  productId: string;
  purchaseToken: string;
  shouldConsume: boolean;
  shouldAcknowledge: boolean;

  // optional signals from verify
  acknowledgementState?: number | null; // 0 not ack, 1 ack
  consumptionState?: number | null; // 0 not consumed, 1 consumed
}) {
  const productId = asString(params.productId);
  const purchaseToken = asString(params.purchaseToken);
  if (!purchaseToken) return;

  try {
    if (params.shouldConsume) {
      // If already consumed (rare), skip.
      if (params.consumptionState === 1) {
        console.log("[IAP] android consume skip (already consumed)", { productId });
        return;
      }
      await consumeGoogleProductPurchase({ productId, purchaseToken });
      console.log("[IAP] android consumed ok", { productId });
      return;
    }

    if (params.shouldAcknowledge) {
      // If already acknowledged, skip.
      if (params.acknowledgementState === 1) {
        console.log("[IAP] android acknowledge skip (already acknowledged)", { productId });
        return;
      }
      await acknowledgeGoogleProductPurchase({ productId, purchaseToken });
      console.log("[IAP] android acknowledged ok", { productId });
      return;
    }
  } catch (e: any) {
    console.warn("[IAP] android consume/ack failed (non-fatal)", {
      productId,
      err: asString(e?.message || e?.toString()),
    });
  }
}