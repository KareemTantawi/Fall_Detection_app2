import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninContainer extends StatelessWidget {
  const SigninContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.22,
      width: double.infinity,
      color: AppColors.primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
        child: Text(
          'Log In',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
