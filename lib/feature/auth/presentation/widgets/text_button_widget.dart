import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({
    super.key,
    required this.title,
    required this.tap,
  });
  final String title;
  void Function()? tap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: tap,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
