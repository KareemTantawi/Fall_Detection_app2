import 'package:fall_detection/core/theming/colors.dart';
import 'package:fall_detection/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      // clipBehavior: Clip.hardEdge,

      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        AppAssetsImages.onboardingImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
