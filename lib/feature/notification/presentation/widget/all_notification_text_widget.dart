import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllNotificationText extends StatelessWidget {
  const AllNotificationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Notifications',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 28.sp,
          ),
        ),
      ],
    );
  }
}
