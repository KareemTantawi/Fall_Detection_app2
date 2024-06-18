import 'package:flutter/material.dart';

class GuidanceText extends StatelessWidget {
  const GuidanceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'FallGruad is the Ultimate app for elders and caregivers Download now',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey.shade500,
      ),
    );
  }
}
