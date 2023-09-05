import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Model/product_model.dart';
import '../../component/counter_product.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productModel});

  final ProductModel productModel;
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
                top: 120.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width - 48.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                size: 40.w,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.w),
                              child: const Column(
                                children: [
                                  Text(
                                    'Sharebox',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '16 Pieces',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
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
                          child: SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/heart.svg',
                              ),
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
          Hero(
            tag: productModel.id,
            child: SizedBox(
              height: 120.h,
              width: 170.w,
              child: Image.asset(
                productModel.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
                color: Colors.white,
              ),
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: const CounterProduct(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Text(
                        'EGP ${productModel.price.toString()}',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: SvgPicture.asset('assets/icons/star.svg'),
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child:
                                  SvgPicture.asset('assets/icons/Calories.svg'),
                            ),
                            Text(
                              '65 Calories',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: SvgPicture.asset('assets/icons/Alarm.svg'),
                            ),
                            Text(
                              '25-35 min',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: inactivedot,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      unselectedLabelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      labelStyle: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      tabs: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: const Text(
                            'About',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: const Text(
                            'Ingridents',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: const Text(
                            'Reviews',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 10.h),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eleifend at scelerisque vitae. Arcu tristique in faucibus turpis scelerisque blandit blandit adipiscing. Id suspendisse donec risus, nulla mauris, eget aliquet. Venenatis, augue imperdiet urna, risus sed ut.Read More',
                              style: TextStyle(
                                color: grey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eleifend at scelerisque vitae. Arcu tristique in faucibus turpis scelerisque blandit blandit adipiscing. Id suspendisse donec risus, nulla mauris, eget aliquet. Venenatis, augue imperdiet urna, risus sed ut.Read More',
                            style: TextStyle(
                              color: grey,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato',
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eleifend at scelerisque vitae. Arcu tristique in faucibus turpis scelerisque blandit blandit adipiscing. Id suspendisse donec risus, nulla mauris, eget aliquet. Venenatis, augue imperdiet urna, risus sed ut.Read More',
                            style: TextStyle(
                              color: grey,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
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
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    'Add to Basket',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/shopping-bagIcon.svg',
                  // ignore: deprecated_member_use
                  color: const Color(0xffE3E4E4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
