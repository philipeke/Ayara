import 'package:flutter/material.dart';

class ConsentRow extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String label;
  final String? linkText;
  final VoidCallback? onLink;
  final bool optional;

  const ConsentRow({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
    this.linkText,
    this.onLink,
    this.optional = false,
  });

  @override
  Widget build(BuildContext context) {
    final hasLink = linkText != null && onLink != null;

    return CheckboxListTile(
      value: value,
      onChanged: (v) => onChanged(v ?? false),
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,

      // Viktigt: undvik Row här – den kan tvinga konstiga radbrytningar.
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            softWrap: true,
          ),
          if (hasLink)
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: onLink,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                child: Text(linkText!),
              ),
            ),
        ],
      ),

      subtitle: optional ? const Text('(optional)') : null,

      // Gör hela tile lite tajtare utan att kapa text.
      visualDensity: const VisualDensity(vertical: -1),
    );
  }
}
