import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class GridItem extends StatelessWidget {
  const GridItem(
      {super.key,
      required this.price,
      required this.title,
      required this.image,
      required this.id});
  final int price;
  final String title;
  final String image;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.w,
      height: 300.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 127.w,
            height: 94.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Hero(
              tag: id,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lato',
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  const MaterialStatePropertyAll<Color>(buttonColorbackground),
              shadowColor:
                  MaterialStatePropertyAll<Color>(shadowColor.withOpacity(0.5)),
              shape: MaterialStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: buttonColorbackground),
                  borderRadius: BorderRadius.circular(
                    50.r,
                  ),
                ),
              ),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(130.w, 44.h),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.w),
                  child: Text(
                    'EGP ${price.toString()}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(
                  CupertinoIcons.bag,
                  color: Colors.white,
                  size: 24.w,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
