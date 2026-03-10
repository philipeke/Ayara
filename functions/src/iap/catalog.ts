/* eslint-disable */

export type IapProduct =
  | {
      kind: "consumable";
      productId: string;
      reflections: number;
      label?: string;
    }
  | {
      kind: "entitlement"; // one-time upgrade
      productId: string;
      reflections?: number; // bonus reflections on purchase
      label?: string;
    };

/**
 * IMPORTANT:
 * Keys MUST match the incoming `productId`
 * from App Store / Play purchases EXACTLY.
 *
 * This is a CLEAN catalog:
 * ❌ No legacy IDs
 * ❌ No migration support
 * ✅ New Nuria economy only
 */
export const IAP_CATALOG: Record<string, IapProduct> = {
  // ─────────────────────────────
  // ✨ Reflections Top-Ups (consumables)
  // ─────────────────────────────

  nuria_reflections_100: {
    kind: "consumable",
    productId: "nuria_reflections_100",
    reflections: 100,
    label: "100 Reflections",
  },

  nuria_reflections_200: {
    kind: "consumable",
    productId: "nuria_reflections_200",
    reflections: 200,
    label: "200 Reflections",
  },

  nuria_reflections_400: {
    kind: "consumable",
    productId: "nuria_reflections_400",
    reflections: 400,
    label: "400 Reflections",
  },

  // ─────────────────────────────
  // ✨ Premium — ONE-TIME entitlement
  // ─────────────────────────────

  "com.oakdev.nuria.premium": {
    kind: "entitlement",
    productId: "com.oakdev.nuria.premium",
    reflections: 300, // bonus reflections on unlock
    label: "Premium – One-time unlock",
  },
};

