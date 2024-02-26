import 'package:fall_detection/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: AppColors.primaryColor,
            size: 32.sp,
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          height: 40.h,
          width: 260.w,
          decoration: BoxDecoration(
            // color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            onSubmitted: (value) {},
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              hintText: 'Search for patient',
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.6),
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
