import 'package:fall_detection/feature/auth/presentation/views/OnBoarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    const FallDetectionApp(),
  );
}

class FallDetectionApp extends StatelessWidget {
  const FallDetectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          OnBoardingScreen.id: (context) => const OnBoardingScreen(),
        },
        initialRoute: OnBoardingScreen.id,
      ),
    );
  }
}