// lib/features/premium/widgets/restore_purchases_section.dart
import 'package:flutter/material.dart';

import 'package:nuria/features/premium/purchase_controller.dart';
import 'package:nuria/l10n/app_localizations.dart';

class RestorePurchasesSection extends StatelessWidget {
  final bool busy;

  const RestorePurchasesSection({
    super.key,
    required this.busy,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return AnimatedBuilder(
      animation: PurchaseController.instance,
      builder: (context, _) {
        final isLoadingNow = PurchaseController.instance.isLoading;

        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.restore, size: 18),
                    const SizedBox(width: 8),
                    Text(
                      t.blessedRestorePurchases,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  t.blessedRestoreHintTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey[700]),
                ),
                const SizedBox(height: 4),
                Text(
                  t.blessedRestoreHintBody,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey[600]),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: (busy || isLoadingNow)
                        ? null
                        : () => PurchaseController.instance.restorePurchases(),
                    icon: const Icon(Icons.restore_rounded, size: 18),
                    label: Text(t.blessedRestorePurchases),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.grey[700],
                      backgroundColor: Colors.grey[100],
                      side: BorderSide(color: Colors.grey[300]!, width: 1),
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                if (isLoadingNow) ...[
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const SizedBox(
                        width: 14,
                        height: 14,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        t.blessedProcessing,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
