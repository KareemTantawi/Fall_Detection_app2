import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/feature/home/presenation/widgets/list_view_patient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/patient_card.dart';
import '../widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Padding(
        //horizontal: 16, vertical: 45
        padding: EdgeInsets.only(
          left: 16.h,
          right: 16.h,
          top: 45.h,
        ),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    const DrawerWidget();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: AppColors.primaryColor,
                    size: 32.sp,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                const SearchWidget(),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const ListViewPatient(),
            // SizedBox(
            //   height: 20.h,
            // ),
            SizedBox(
              height: 531.h,
              width: double.infinity,
              child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => const PatientCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      SizedBox(
        height: 80.h,
      ),
      const Text('kareem'),
    ]));
  }
}
