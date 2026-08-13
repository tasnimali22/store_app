import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    this.onSubmitted,
    this.textInputType,
    this.onchanged,
    this.obscure = false,
    this.controller,
    super.key,
    required this.hintText,
  });
  final String hintText;
  final bool obscure;
  final Function(String)? onchanged;
  final Function(String)? onSubmitted;
  final TextInputType? textInputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      keyboardType: textInputType,
      onSubmitted: onSubmitted,
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
      ),
    );
  }
}
