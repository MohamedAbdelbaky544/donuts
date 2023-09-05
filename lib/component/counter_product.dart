import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CounterProduct extends StatefulWidget {
  const CounterProduct({super.key});

  @override
  State<CounterProduct> createState() => _CounterProductState();
}

class _CounterProductState extends State<CounterProduct> {
  int item = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: const Color(0xffDADADA),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                if (item > 1) {
                  setState(() {
                    item -= 1;
                  });
                }
              },
              child: SvgPicture.asset('assets/icons/min.svg')),
          Text(
            item.toString(),
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                item += 1;
              });
            },
            child: SvgPicture.asset('assets/icons/plus.svg'),
          ),
        ],
      ),
    );
  }
}
