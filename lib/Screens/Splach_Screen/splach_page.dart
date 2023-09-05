import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../onboarding_Screens/onboarding_page.dart';

class SplachPage extends StatefulWidget {
  const SplachPage({super.key});

  @override
  State<SplachPage> createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return const OnboardingPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: SizedBox(
              width: 296.w,
              height: MediaQuery.sizeOf(context).height,
              child: SvgPicture.asset(
                'assets/images/Vector.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 305.09.h,
              child: SvgPicture.asset(
                'assets/images/top_splach.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 213.15.h,
              child: SvgPicture.asset(
                'assets/images/bottom_splach.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 290.h,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: 285.w,
                      height: 59.h,
                      child: SvgPicture.asset(
                        'assets/images/top_word.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 269.48.w,
                      height: 207.12.h,
                      child: SvgPicture.asset(
                        'assets/images/donut.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 284.w,
                      height: 71.82.h,
                      child: SvgPicture.asset(
                        'assets/images/botton_word.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
