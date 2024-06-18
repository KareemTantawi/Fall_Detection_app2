import 'package:fall_detection/core/extensions/context_extension.dart';
import 'package:fall_detection/core/routes/routes.dart';
import 'package:fall_detection/core/styles/images/assets.dart';
import 'package:fall_detection/core/common/widgets/elevated_button_widget.dart';
import 'package:fall_detection/core/utils/spacing.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(80),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssetsImages.onboardingImage,
                ),
              ),
              verticalSpace(20),
              const WelcomeText(),
              verticalSpace(16),
              const GuidanceText(),
              verticalSpace(40),
              ElevatedButtonWidget(
                tap: () {
                  // Navigator.pushNamed(context, SignUpScreen.id);
                  context.pushName(Routes.sighupScreen);
                },
                title: 'Get Started',
              ),
              verticalSpace(8),
              ButtonTextWidget(
                title: 'Skip',
                tap: () {
                  // Navigator.pushNamed(context, LoginScreen.id);
                  context.pushName(Routes.loginInScreen);
                },
              ),
              verticalSpace(35),
              ButtonTextWidget(
                title: 'Sign in now',
                tap: () {
                  // Navigator.pushNamed(context, LoginScreen.id);
                  context.pushName(Routes.loginInScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
