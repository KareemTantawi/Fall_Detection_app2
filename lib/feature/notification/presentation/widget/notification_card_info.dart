import 'package:fall_detection/core/extensions/context_extension.dart';
import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/core/styles/images/assets.dart';
import 'package:fall_detection/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationContainerInfo extends StatelessWidget {
  const NotificationContainerInfo({
    super.key,
    required this.icon,
    required this.title,
    required this.min,
    required this.image,
  });
  final IconData icon;
  final String title;
  final String min;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 234, 240, 245),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.height * 0.01,
          horizontal: context.width * 0.03,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 32.r,
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: context.width * 0.5,
                      child: Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                    verticalSpace(4),
                    Text(
                      min,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                icon,
                size: 24.r,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
