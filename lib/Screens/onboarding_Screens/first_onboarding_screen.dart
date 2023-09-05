import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstOnBordingPage extends StatelessWidget {
  const FirstOnBordingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                width: 204.67.w,
                height: 279.67.h,
                child: SvgPicture.asset(
                  'assets/images/firtOnbordingTopImage.svg',
                  fit: BoxFit.fill,
                  // ignore: deprecated_member_use
                  color: Colors.blue[200],
                ),
              ),
            ),
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
              bottom: 0,
              left: 200.w,
              child: SizedBox(
                width: 438.99.w,
                height: 466.6.h,
                child: SvgPicture.asset(
                  'assets/images/firstOnboaddingbottom.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 279.67.h,
                child: Image.asset(
                  'assets/images/top_first_onbording.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                width: 300.w,
                height: 466.6.h,
                child: Image.asset(
                  'assets/images/first_onboarding_bottom.png',
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
                    'Choose Your Dounts',
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
