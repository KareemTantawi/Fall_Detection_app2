import 'package:dio/dio.dart';
import 'package:fall_detection/feature/auth/presentation/Manger/Cubits/Auth_Cubit/Auth_Cubit.dart';
import 'package:fall_detection/feature/auth/presentation/views/OnBoarding_view.dart';
import 'package:fall_detection/feature/auth/presentation/views/signup_view.dart';
import 'package:fall_detection/feature/home/presenation/views/bottom_nav_bar.dart';
import 'package:fall_detection/feature/home/presenation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/api/dio_consumer.dart';
import 'core/cache/cache_helper.dart';
import 'feature/auth/presentation/views/login_view.dart';
import 'feature/notification/presentation/views/notification_view.dart';
import 'feature/patient/presentation/views/patient_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();

  runApp(
    BlocProvider(
        create: (context) => AuthCubit(DioConsumer(dio: Dio())),
        child: const FallDetectionApp()),
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
          LoginScreen.id: (context) => LoginScreen(),
          SignUpScreen.id: (context) => SignUpScreen(),
          BottomNavBar.id: (context) => BottomNavBar(),
          HomeScreen.id: (context) => const HomeScreen(),
          PatientScreen.id: (context) => const PatientScreen(),
          NotificationScreen.id: (context) => const NotificationScreen(),
        },
        initialRoute: OnBoardingScreen.id,
      ),
    );
  }
}
