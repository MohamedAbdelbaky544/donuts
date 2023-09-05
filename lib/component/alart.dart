import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class Alart extends StatelessWidget {
  const Alart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 200,
          child: Container(
            height: 290.h,
            width: 343.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 100.h),
              child: Column(
                children: [
                  Text(
                    'Congratulatio',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: SizedBox(
                      width: 230.w,
                      child: Text(
                        'Your order has been confirmed successfully',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            buttonColorbackground),
                        shadowColor: MaterialStatePropertyAll<Color>(
                            shadowColor.withOpacity(0.5)),
                        shape: MaterialStatePropertyAll<OutlinedBorder>(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 2,
                                style: BorderStyle.solid,
                                color: buttonColorbackground),
                            borderRadius: BorderRadius.circular(
                              5.r,
                            ),
                          ),
                        ),
                        fixedSize:
                            MaterialStatePropertyAll<Size>(Size(343.w, 56.h)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Track your order',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: 290,
            child: SvgPicture.asset(
              'assets/icons/alertIcon.svg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 255.h,
          left: 300.w,
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                color: buttonColorbackground,
              )),
        ),
      ],
    );
  }
}
