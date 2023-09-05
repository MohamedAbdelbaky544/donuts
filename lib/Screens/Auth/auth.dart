import 'package:donuts/Screens/Auth/sign_up.dart';
import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../navigationbar.dart/navigation_bar.dart';
import 'sign_in.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: inactivedot,
                width: MediaQuery.sizeOf(context).width,
                height: 253.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 52.h,
                      left: 139.w,
                      child: SizedBox(
                        width: 150.w,
                        height: 150.h,
                        child: Image.asset(
                          'assets/images/Logo.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16.h,
                      right: 16.w,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const ButtomNavigationBar();
                            }),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'Skip',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.w,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 24.w,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 16.w),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: inactivedot,
                  labelColor: inactivedot,
                  unselectedLabelColor: grey,
                  unselectedLabelStyle: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                  labelStyle: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: inactivedot,
                  ),
                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: const Text(
                        'Sign in',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: const Text(
                        'Sign Up',
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    SignIn(),
                    SignUp(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
