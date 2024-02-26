import 'package:fall_detection/core/theming/colors.dart';
import 'package:fall_detection/core/utils/assets.dart';
import 'package:fall_detection/feature/home/presenation/widgets/circle_avater_image.dart';
import 'package:fall_detection/feature/home/presenation/widgets/list_view_patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/patient_card.dart';
import '../widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        //horizontal: 16, vertical: 45
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 45,
        ),
        child: Column(
          children: [
            SearchWidget(),
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
                itemBuilder: (context, index) => PatientCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
