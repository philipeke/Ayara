import 'package:flutter/material.dart';

PageRouteBuilder fadeRoute(
  Widget page, {
  Duration duration = const Duration(milliseconds: 300),
  Duration reverseDuration = const Duration(milliseconds: 250),
}) {
  return PageRouteBuilder(
    transitionDuration: duration,
    reverseTransitionDuration: reverseDuration,
    pageBuilder: (_, __, ___) => page,
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(
        opacity: CurvedAnimation(parent: animation, curve: Curves.easeInOut),
        child: child,
      );
    },
  );
}
