import 'package:fall_detection/core/utils/assets.dart';
import 'package:fall_detection/core/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        padding: const EdgeInsets.all(16),
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
              tap: () {},
              title: 'Get Started',
            ),
            SizedBox(
              height: 8.h,
            ),
            TextButtonWidget(
              title: 'Skip',
              tap: () {},
            ),
            SizedBox(
              height: 35.h,
            ),
            TextButtonWidget(
              title: 'Sign in now',
              tap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
