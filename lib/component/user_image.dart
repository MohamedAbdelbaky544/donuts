import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/svg.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: Stack(
        children: [
          SizedBox(
            width: 130.w,
            height: 140.h,
            child: SvgPicture.asset(
              'assets/images/Ellipse 1205.svg',
            ),
          ),
          Positioned(
            left: 30.w,
            top: 10.h,
            child: SizedBox(
                width: 65.w,
                height: 90.h,
                child: Image.asset('assets/images/userimage.png')),
          ),
          Positioned(
            top: 120.h,
            left: 50.w,
            child: SizedBox(
              width: 30.w,
              height: 30.h,
              child: SvgPicture.asset(
                'assets/images/camera.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
