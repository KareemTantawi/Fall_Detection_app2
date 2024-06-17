import 'package:fall_detection/core/styles/images/assets.dart';
import 'package:fall_detection/core/common/widgets/elevated_button_widget.dart';
import 'package:fall_detection/feature/auth/presentation/views/login_view.dart';
import 'package:fall_detection/feature/auth/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/guidance_text_widget.dart';
import '../widgets/text_button_widget.dart';
import '../widgets/welcome_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssetsImages.onboardingImage,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const WelcomeText(),
              SizedBox(
                height: 26.h,
              ),
              const GuidanceText(),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButtonWidget(
                tap: () {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
                title: 'Get Started',
              ),
              SizedBox(
                height: 8.h,
              ),
              ButtonTextWidget(
                title: 'Skip',
                tap: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              SizedBox(
                height: 35.h,
              ),
              ButtonTextWidget(
                title: 'Sign in now',
                tap: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
