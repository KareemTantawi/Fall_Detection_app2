import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupContainer extends StatelessWidget {
  const SignupContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.22,
      width: double.infinity,
      color: AppColors.primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
