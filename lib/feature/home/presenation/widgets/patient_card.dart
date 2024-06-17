import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/core/styles/images/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 340.h,
          width: double.infinity,
          // color: Colors.grey,
          child: Card(
            color: Color(0xffD3E4EC),
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 32.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: AppColors.primaryColor,
                        child: CircleAvatar(
                          radius: 28.r,
                          backgroundImage: const AssetImage(
                            AppAssetsImages.onboardingImage,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'patient',
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        '5 min ago',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.sp,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          size: 32.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    AppAssetsImages.fallingImage,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'I need help in this location',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
