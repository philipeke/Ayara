import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';

class AIWaveLoader extends StatefulWidget {
  const AIWaveLoader({super.key});

  @override
  State<AIWaveLoader> createState() => _AIWaveLoaderState();
}

class _AIWaveLoaderState extends State<AIWaveLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      lowerBound: 0.75,
      upperBound: 1.15,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _controller,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: AppColors.gold,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 28,
              spreadRadius: 3,
              color: AppColors.gold.withValues(alpha: 0.4 * _controller.value),
            ),
          ],
        ),
      ),
    );
  }
}

