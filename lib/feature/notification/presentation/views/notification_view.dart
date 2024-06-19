import 'package:fall_detection/core/styles/images/assets.dart';
import 'package:fall_detection/feature/notification/presentation/widget/notification_card_info.dart';

import 'package:fall_detection/core/extensions/context_extension.dart';
import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/core/utils/spacing.dart';
import 'package:fall_detection/feature/notification/presentation/widget/all_notification_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  // static String id = 'notification_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Padding(
            // horizontal: context.width * 0.033,
            // vertical: context.height * 0.053,
            padding: EdgeInsets.only(
              top: context.height * 0.053,
              left: context.width * 0.033,
              right: context.width * 0.033,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                verticalSpace(12),
                const AllNotificationText(),
              ],
            ),
          ),
          Container(
            height: context.height * 0.76093,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.r),
              ),
            ),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: NotificationContainerInfo(
                    icon: Icons.phone,
                    title:
                        'The camera has detected a falling at Ali\'s Location',
                    min: '1 min ago',
                    image: AppAssetsImages.fallingImage,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
