import 'package:fall_detection/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowInfoWidget extends StatelessWidget {
  const RowInfoWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32.h,
          width: 32.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[350],
          ),
          child: Icon(
            icon,
            size: 18,
          ),
        ),
        horizontalSpace(16),
        InkWell(
          onTap: onTap,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
