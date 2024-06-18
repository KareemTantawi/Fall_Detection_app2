import 'package:fall_detection/core/extensions/context_extension.dart';
import 'package:fall_detection/core/routes/routes.dart';
import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/core/utils/spacing.dart';
import 'package:fall_detection/feature/home/presenation/widgets/circle_avater_image.dart';
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
            itemBuilder: (context, index) => const CircleAvaterImage(),
          ),
        ),
        horizontalSpace(25),
        Column(
          children: [
            Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.all(
                  Radius.circular(60.r),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  context.pushName(Routes.mapScreen);
                },
                icon: const Icon(
                  Icons.map,
                ),
              ),
            ),
            const Text(
              'Map',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    );
  }
}
