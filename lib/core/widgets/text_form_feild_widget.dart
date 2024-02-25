import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.onChanged,
    required this.validator,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });
  final TextEditingController controller;
  final TextInputType keyboardType;
  void Function(String)? onChanged;
  String? Function(String?)? validator;
  final String hintText;
  final IconData icon;
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: onChanged,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        suffixIcon: Icon(
          icon,
          color: Colors.grey.shade400,
        ),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
