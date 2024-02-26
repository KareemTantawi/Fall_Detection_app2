import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});
  static String id = 'patient_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Patient'),
      ),
    );
  }
}
