import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/core/utils/spacing.dart';
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
          left: 16.w,
          right: 16.w,
          top: 45.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      const DrawerWidget();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: AppColors.primaryColor,
                      size: 32,
                    ),
                  ),
                  horizontalSpace(20),
                  const SearchWidget(),
                ],
              ),
              verticalSpace(20),
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
      verticalSpace(40),
      const Text('kareem'),
    ]));
  }
}
