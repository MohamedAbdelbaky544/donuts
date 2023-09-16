import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:donuts/colors.dart';

class UserData extends StatelessWidget {
  const UserData(
      {required this.icon, required this.tittle, required this.contant});

  final Widget icon;
  final String tittle;
  final String contant;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 352.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: icon,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle,
                style: TextStyle(
                  color: buttonColorbackground,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                contant,
                style: TextStyle(
                  color: Color(0xff03071E),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
