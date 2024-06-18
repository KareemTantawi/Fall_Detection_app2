import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonTextWidget extends StatelessWidget {
  ButtonTextWidget({
    super.key,
    required this.title,
    required this.tap,
  });
  final String title;
  void Function()? tap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: tap,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
