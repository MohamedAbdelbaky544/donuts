import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ThirdOnboardingScreen extends StatelessWidget {
  const ThirdOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 245.h,
              left: 0,
              child: SizedBox(
                width: 317.33.w,
                height: 637.33.h,
                child: SvgPicture.asset(
                  'assets/images/firstOnboardingDountmiddle.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: 350.w,
                height: 466.6.h,
                child: Image.asset(
                  'assets/images/thirdonboardingtop.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 66.h,
              child: SizedBox(
                height: 213.67.h,
                width: 105.46.w,
                child: SvgPicture.asset(
                  'assets/images/dounatOnboardingThird.svg',
                  fit: BoxFit.fill,
                  // ignore: deprecated_member_use
                  color: Colors.blue[200],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                width: 250.w,
                height: 466.6.h,
                child: Image.asset(
                  'assets/images/third_onboarding_bottom.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 307.h,
              left: 50.w,
              child: Column(
                children: [
                  Text(
                    'Receiver Your Order',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 323.w,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas rhoncus praesent elementum massa at.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
