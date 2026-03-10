import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ayara/features/auth/widgets/ai_wave_loader.dart';

import '../utils/route_fade.dart';
import 'category_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, this.prepare});
  final Future<void> Function(BuildContext context)? prepare;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _navigated = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
    _prepareAndLaunch();
  }

  Future<void> _prepareAndLaunch() async {
    try {
      if (widget.prepare != null) {
        await widget.prepare!(context).timeout(
          const Duration(seconds: 4),
          onTimeout: () {},
        );
      }
      // Brief pause so the dot is visible before we navigate
      await Future<void>.delayed(const Duration(milliseconds: 350));
    } catch (_) {
    } finally {
      _goNext();
    }
  }

  void _goNext() {
    if (!mounted || _navigated) return;
    _navigated = true;
    Navigator.of(context).pushReplacement(fadeRoute(const CategoryScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _goNext,
      child: const Scaffold(
        backgroundColor: Color(0xFF0D0205),
        body: Center(
          child: AIWaveLoader(),
        ),
      ),
    );
  }
}

