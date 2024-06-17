import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/feature/home/presenation/widgets/circle_avater_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewPatient extends StatelessWidget {
  const ListViewPatient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100.h,
          width: 240.w,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            // ImageContainer(),
            itemBuilder: (context, index) => CircleAvaterImage(),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        Column(
          children: [
            Container(
              height: 60.h,
              width: 60.w,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  print('tapped');
                },
                icon: const Icon(
                  Icons.map,
                ),
              ),
            ),
            Text(
              'Map',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    );
  }
}
