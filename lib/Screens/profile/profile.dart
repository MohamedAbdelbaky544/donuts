import 'package:flutter/material.dart';
import 'package:donuts/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/user_data.dart';
import '../../component/user_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: SizedBox(
            height: 16.h,
            width: 16.w,
            child: SvgPicture.asset(
              'assets/images/menuIcon.svg',
              fit: BoxFit.cover,
              height: 16.h,
              width: 16.w,
            ),
          ),
        ),
        title: Container(
          width: 150.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/location 01.svg',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(
                  'Area 7, Garki Abuja',
                  style: TextStyle(
                    color: buttonColorbackground,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Icon(
              Icons.email_outlined,
              color: buttonColorbackground,
              size: 32.w,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Center(
                child: UserImage(),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Profile',
              style: TextStyle(
                color: Color(0xff03071E),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Lato',
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            UserData(
                icon: Icon(Icons.account_circle_outlined,
                    color: buttonColorbackground),
                tittle: 'Vendor name',
                contant: 'Mohamed Abdelbaky'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.h),
              child: UserData(
                  icon: Icon(Icons.email_rounded, color: buttonColorbackground),
                  tittle: 'Email',
                  contant: 'Mohamed_Abdelbaky@gmail.com'),
            ),
            UserData(
                icon: Icon(Icons.phone_iphone_outlined,
                    color: buttonColorbackground),
                tittle: 'Phone number',
                contant: '+234 901 540 6115'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.h),
              child: UserData(
                  icon: Icon(Icons.location_on_outlined,
                      color: buttonColorbackground),
                  tittle: 'Location',
                  contant: 'Area 7, Garki, Abuja'),
            ),
            Container(
              height: 80.h,
              width: 352.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Icon(Icons.wallet, color: buttonColorbackground),
                  ),
                  Text(
                    'Payment collectors',
                    style: TextStyle(
                      color: Color(0xff03071E),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Icon(Icons.arrow_forward_ios_outlined,
                        color: Color(0xff03071E)),
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
