import 'package:donuts/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Model/dummy_data.dart';
import '../../component/grid_item.dart';

import '../drawer/drawer.dart';
import '../product_details.dart/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
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
                          child: SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/ri_menu-2-fill.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                              child: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                    vertical: 10.h,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/notification.svg',
                                  ),
                                ),
                              ),
                            ),
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
                                child: Image.asset(
                                  'assets/icons/testImage.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.h),
                child: Container(
                  width: 396.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15.r,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.25),
                        offset: const Offset(-4, -4),
                        blurRadius: 4.0,
                        spreadRadius: 0.0,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: const Offset(4, 4),
                        blurRadius: 4.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.h),
                            child:
                                SvgPicture.asset('assets/icons/location.svg'),
                          ),
                          Text(
                            'Select Location',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: SvgPicture.asset('assets/icons/dropDown.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                tabs: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 40.h,
                    child: const Tab(text: 'All'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: unselectedpink,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 40.h,
                    child: const Tab(text: 'Minis'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: unselectedpink,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 40.h,
                    child: const Tab(text: 'Tropical Paradise'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: unselectedpink,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 40.h,
                    child: const Tab(text: 'Muffins'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: unselectedpink,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 40.h,
                    child: const Tab(text: 'Donuts'),
                  ),
                ],
                labelStyle: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Lato',
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Lato',
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.only(left: 15.w),
                indicator: BoxDecoration(
                  color: buttonColorbackground,
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            'Popular ',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/donut with pink icing.png'),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            'view all',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/arrow_right.png'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0.w,
                        mainAxisSpacing: 10.0.h,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ProductDetails(
                                    productModel: products[index],
                                  );
                                },
                              ),
                            );
                          },
                          child: GridItem(
                            price: products[index].price,
                            title: products[index].title,
                            image: products[index].image,
                            id: products[index].id,
                          ),
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0.w,
                        mainAxisSpacing: 10.0.h,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        return GridItem(
                          price: products[index].price,
                          title: products[index].title,
                          image: products[index].image,
                          id: products[index].id,
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0.w,
                        mainAxisSpacing: 10.0.h,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        return GridItem(
                          price: products[index].price,
                          title: products[index].title,
                          image: products[index].image,
                          id: products[index].id,
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0.w,
                        mainAxisSpacing: 10.0.h,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        return GridItem(
                          price: products[index].price,
                          title: products[index].title,
                          image: products[index].image,
                          id: products[index].id,
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0.w,
                        mainAxisSpacing: 10.0.h,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        return GridItem(
                          price: products[index].price,
                          title: products[index].title,
                          image: products[index].image,
                          id: products[index].id,
                        );
                      },
                    ),
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
