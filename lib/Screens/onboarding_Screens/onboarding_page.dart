import 'package:donuts/Screens/Auth/auth.dart';
import 'package:donuts/Screens/onboarding_Screens/second_onboarding_screen.dart';
import 'package:donuts/Screens/onboarding_Screens/third_onboarding_screen.dart';
import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../component/custom_button.dart';
import 'First_onboarding_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> page = const [
    FirstOnBordingPage(),
    SecondOnbordingPage(),
    ThirdOnboardingScreen(),
  ];
  bool islast = false;
  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: page.length,
            onPageChanged: (value) {
              setState(() {
                active = value;
                if (value == 2) {
                  islast = true;
                } else {
                  islast = false;
                }
              });
            },
            itemBuilder: (context, index) {
              return page[index];
            },
          ),
          Positioned(
            top: 480.h,
            left: 160.w,
            child: SmoothPageIndicator(
                controller: _pageController,
                count: page.length,
                effect: const ExpandingDotsEffect(
                  dotColor: inactivedot,
                  activeDotColor: buttonColorbackground,
                ),
                onDotClicked: (index) {
                  _pageController.jumpToPage(index);
                  setState(() {
                    active = index;
                  });
                }),
          ),
          Positioned(
            top: 520.h,
            left: 50.w,
            child: Column(
              children: [
                CustomButton(
                  onPress: () {
                    if (islast == false) {
                      _pageController.nextPage(
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          curve: Curves.linear);
                    } else {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const AuthPage();
                      }));
                    }
                  },
                  buttonColor: buttonColorbackground,
                  text: islast ? 'Start' : 'Next',
                  textColor: Colors.white,
                ),
                active == 0
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: CustomButton(
                          onPress: () {
                            _pageController.previousPage(
                                duration: const Duration(
                                  milliseconds: 300,
                                ),
                                curve: Curves.linear);
                          },
                          buttonColor: Colors.white,
                          text: 'back',
                          textColor: buttonColorbackground,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
