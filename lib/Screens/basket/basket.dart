import 'package:donuts/Model/dummy_data.dart';
import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/basket_item.dart';
import '../../component/custom_text_form.dart';
import '../navigationbar.dart/navigation_bar.dart';
import '../shipping/shipping_information.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

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
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const ButtomNavigationBar();
                                },
                              ),
                            );
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
                            'Basket Details',
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
          ListView.builder(
            shrinkWrap: true,
            itemCount: basket.length,
            padding: const EdgeInsets.all(0),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                child: BasketItem(
                  productModel: basket[index],
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.w),
            child: SizedBox(
              height: 60.h,
              child: CustomTextFormField(
                controller: TextEditingController(),
                hintText: 'Promo Code',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: SvgPicture.asset(
                    'assets/icons/Promo - icon.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                suffixIcon: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
                  child: Text(
                    'Applay',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: buttonColorbackground,
                      fontSize: 16.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'EGY 390',
                            style: TextStyle(
                              color: const Color(0xff00FF47),
                              fontSize: 20.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'EGY 50',
                            style: TextStyle(
                              color: const Color(0xff00FF47),
                              fontSize: 20.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const Divider(
                        color: grey,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'EGY 440',
                            style: TextStyle(
                              color: const Color(0xff00FF47),
                              fontSize: 20.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 48.w,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
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
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const ShippingInformation();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Check Out',
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
        ],
      ),
    );
  }
}
