import 'package:fall_detection/feature/auth/presentation/views/OnBoarding_view.dart';
import 'package:fall_detection/feature/auth/presentation/views/login_view.dart';
import 'package:fall_detection/feature/auth/presentation/views/signup_view.dart';
import 'package:fall_detection/feature/chat/presentation/view/chat_view.dart';
import 'package:fall_detection/feature/home/presenation/views/bottom_nav_bar.dart';
import 'package:fall_detection/feature/home/presenation/views/home_view.dart';
import 'package:fall_detection/feature/notification/presentation/views/notification_view.dart';
import 'package:fall_detection/feature/patient/presentation/views/patient_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:flutter/material.dart';

class FallDetectionApp extends StatelessWidget {
  const FallDetectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      // splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          OnBoardingScreen.id: (context) => const OnBoardingScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          SignUpScreen.id: (context) => const SignUpScreen(),
          BottomNavBar.id: (context) => const BottomNavBar(),
          HomeScreen.id: (context) => const HomeScreen(),
          PatientScreen.id: (context) => const PatientScreen(),
          NotificationScreen.id: (context) => const NotificationScreen(),
          ChatView.id: (context) => const ChatView(),
        },
        initialRoute: OnBoardingScreen.id,
      ),
    );
  }
}
