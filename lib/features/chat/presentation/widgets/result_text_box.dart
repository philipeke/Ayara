import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';

class ResultTextBox extends StatefulWidget {
  const ResultTextBox({
    super.key,
    required this.text,
    this.perChar = const Duration(milliseconds: 28),
  });

  final String text;
  final Duration perChar;

  @override
  State<ResultTextBox> createState() => _ResultTextBoxState();
}

class _ResultTextBoxState extends State<ResultTextBox>
    with SingleTickerProviderStateMixin {
  String _displayText = '';
  bool _typing = false;
  bool _skipTyping = false;

  Future<void>? _typingFuture;

  late final AnimationController _dots;
  late final Animation<double> _dotAnim;

  @override
  void initState() {
    super.initState();

    _dots = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);

    _dotAnim = Tween<double>(begin: 0, end: 3)
        .animate(CurvedAnimation(parent: _dots, curve: Curves.easeInOut));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startTyping(widget.text);
    });
  }

  @override
  void didUpdateWidget(covariant ResultTextBox oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.text != widget.text) {
      _startTyping(widget.text);
    }
  }

  @override
  void dispose() {
    _dots.dispose();
    super.dispose();
  }

  // ------------------------------------------------------
  // ✨ Stabil typing-animation (inga scramble-buggar längre!)
  // ------------------------------------------------------
  void _startTyping(String fullText) {
    // Stoppa pågående animation
    _skipTyping = true;

    setState(() {
      _displayText = '';
      _typing = true;
    });

    // Starta ny animation efter 1 frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _skipTyping = false;
      _typingFuture = _animateText(fullText);
    });
  }

  Future<void> _animateText(String full) async {
    final chars = full.runes.toList();

    for (int i = 0; i < chars.length; i++) {
      if (!mounted || _skipTyping) break;

      setState(() {
        _displayText = String.fromCharCodes(chars.sublist(0, i + 1));
      });

      await Future.delayed(widget.perChar);
    }

    if (!mounted) return;

    // Säkerställ full text visas
    setState(() {
      _displayText = full;
      _typing = false;
    });
  }

  /// Användaren tappar → hoppa till slutet
  void _skip() {
    if (_typing) {
      _skipTyping = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // ✅ Ayara light panel styling
    final panelBg = AppColors.warmWhite.withValues(alpha: 0.96);
    final panelBorder = AppColors.gold.withValues(alpha: 0.35);
    final textColor = AppColors.navy;

    return GestureDetector(
      onTap: _skip,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: panelBg,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: panelBorder),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.14),
                  blurRadius: 26,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ⭐ Själva texten
                  SelectableText(
                    _displayText.isEmpty ? "…" : _displayText,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: textColor,
                      fontSize: 20,
                      height: 1.6,
                      letterSpacing: 0.2,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // ⭐ Tre pulserande punkter när den skriver
                  if (_typing)
                    AnimatedBuilder(
                      animation: _dotAnim,
                      builder: (_, __) {
                        final dots = '.' * _dotAnim.value.floor();
                        return Text(
                          dots,
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.navy.withValues(alpha: 0.35),
                            letterSpacing: 3,
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
