import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuidanceText extends StatelessWidget {
  const GuidanceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'FallGruad is the Ultimate app for elders and caregivers Download now',
      style: TextStyle(
        fontSize: 14.sp,
        color: Colors.grey.shade500,
      ),
    );
  }
}
