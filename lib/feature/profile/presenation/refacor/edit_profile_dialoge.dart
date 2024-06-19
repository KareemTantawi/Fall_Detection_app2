import 'package:fall_detection/core/extensions/context_extension.dart';
import 'package:fall_detection/core/styles/images/assets.dart';
import 'package:fall_detection/core/utils/spacing.dart';
import 'package:fall_detection/feature/profile/presenation/widgets/row_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileDialge extends StatelessWidget {
  const EditProfileDialge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: context.height * 0.6,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: context.height * 0.078,
                left: context.width * 0.05,
                right: context.width * 0.05,
                bottom: context.height * 0.1,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Fall Detection',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 22,
                          ),
                    ),
                  ),
                  verticalSpace(48),
                  const RowInfoWidget(
                    icon: Icons.male,
                    text: 'Male',
                  ),
                  verticalSpace(16),
                  const RowInfoWidget(
                    icon: Icons.phone,
                    text: '+2 01229526319',
                  ),
                  verticalSpace(16),
                  const RowInfoWidget(
                    icon: Icons.person_add_alt_rounded,
                    text: '4 following',
                  ),
                  verticalSpace(16),
                  RowInfoWidget(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => const AlertDialog(
                          content: EditProfileDialge(),
                        ),
                      );
                    },
                    icon: Icons.edit,
                    text: 'Edit Profile',
                  ),
                  verticalSpace(16),
                  RowInfoWidget(
                    onTap: () {},
                    icon: Icons.logout_outlined,
                    text: 'Log out',
                  ),
                  verticalSpace(16),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          // top: context.height * 0.1,
          left: context.width * 0.22,
          right: context.width * 0.22,
          bottom: context.height * 0.46,
          child: Container(
            height: context.height * 0.3,
            width: context.height * 0.3,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.red,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: context.height * 0.15,
              backgroundImage: const AssetImage(AppAssetsImages.fallingImage),
            ),
          ),
        ),
      ],
    );
  }
}
