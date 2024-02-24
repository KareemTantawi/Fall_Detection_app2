import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Welcome to FallGuard Let's get started",
      style: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
