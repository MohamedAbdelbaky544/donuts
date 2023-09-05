import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.icon, this.onTap});
  final String icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.r,
          ),
          border: Border.all(
            color: inactivedot,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 40.w,
            height: 40.h,
            child: Image.asset(
              icon,
            ),
          ),
        ),
      ),
    );
  }
}
