import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.prefixIcon,
      required this.hintText,
      required this.controller,
      required this.keyboardType,
      this.suffixIcon});

  final Widget prefixIcon;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(
            color: grey,
            fontFamily: 'Lato',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8.r,
            ),
            borderSide: const BorderSide(
              color: grey,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8.r,
            ),
            borderSide: const BorderSide(
              color: grey,
            ),
          ),
        ),
      ),
    );
  }
}
