import 'package:donuts/Model/dummy_data.dart';
import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/alart.dart';

class ShippingInformation extends StatefulWidget {
  const ShippingInformation({super.key});

  @override
  State<ShippingInformation> createState() => _ShippingInformationState();
}

class _ShippingInformationState extends State<ShippingInformation> {
  String _value = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 210.h,
                child: SvgPicture.asset(
                  'assets/icons/topScreen.svg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 130.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width - 48.w,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 48.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(0, 4),
                                  blurRadius: 12.0,
                                  spreadRadius: 0.0,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              size: 35.w,
                              color: buttonColorbackground,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: const Text(
                            'Shipping Information',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
                horizontal: 16.w,
              ),
              child: Text(
                'Shipping To',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: address.length,
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Container(
                    height: 114.h,
                    width: 396.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio.adaptive(
                              value: address[index].id,
                              groupValue: _value,
                              activeColor: buttonColorbackground,
                              fillColor: MaterialStateProperty.all<Color>(
                                buttonColorbackground,
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Text(
                                    address[index].title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lato',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Text(
                                  address[index].description,
                                  style: TextStyle(
                                    color: grey,
                                    fontFamily: 'Lato',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 14.w,
                                vertical: 10.h,
                              ),
                              child: SvgPicture.asset(
                                  'assets/icons/expandListIcon.svg'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll<Color>(Colors.white),
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
                fixedSize: MaterialStatePropertyAll<Size>(Size(396.w, 56.h)),
              ),
              onPressed: () {},
              child: Text(
                'Add New One',
                style: TextStyle(
                  color: buttonColorbackground,
                  fontFamily: 'Lato',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
          child: ElevatedButton(
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
                    5.r,
                  ),
                ),
              ),
              fixedSize: MaterialStatePropertyAll<Size>(Size(343.w, 56.h)),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    // return const Dialog(
                    //   backgroundColor: Colors.transparent,
                    //   child: Center(child: Alart()),
                    // );
                    return Material(
                      elevation: 24.0,
                      color: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.w,
                          vertical: 128.h,
                        ),
                        child: const Alart(),
                      ),
                    );
                  });
            },
            child: Text(
              'Next - Payment',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
