import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      textAlign: TextAlign.center,
      "Welcome to FallGuard Let's get started",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
