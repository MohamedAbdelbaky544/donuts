import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Divider(
              thickness: 2.h,
              color: grey,
              indent: 10.w,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Divider(
              thickness: 2.h,
              color: grey,
              endIndent: 10.w,
            ),
          ),
        ),
      ],
    );
  }
}
