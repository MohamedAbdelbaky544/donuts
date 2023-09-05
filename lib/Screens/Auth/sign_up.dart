import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';
import '../../component/custom_button.dart';
import '../../component/custom_divider.dart';
import '../../component/custom_text_form.dart';
import '../../component/social_icon.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            height: 60.h,
            child: CustomTextFormField(
              controller: TextEditingController(),
              hintText: 'Username',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icon(
                Icons.person_outline_outlined,
                color: grey,
                size: 24.w,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: SizedBox(
              height: 60.h,
              child: CustomTextFormField(
                controller: TextEditingController(),
                hintText: 'E-mail',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: grey,
                  size: 24.w,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
            child: CustomTextFormField(
              controller: TextEditingController(),
              hintText: 'Password',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icon(
                Icons.lock_outline,
                color: grey,
                size: 24.w,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: grey,
                size: 24.w,
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            onPress: () {},
            buttonColor: buttonColorbackground,
            text: 'Sign Up',
            textColor: Colors.white,
          ),
          SizedBox(
            height: 16.h,
          ),
          const CustomDivider(
            text: 'Or Sign Up With',
          ),
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialIcon(
                  onTap: () {},
                  icon: 'assets/icons/Google - icon.png',
                ),
                SocialIcon(
                  onTap: () {},
                  icon: 'assets/icons/facebook-icon.png',
                ),
                SocialIcon(
                  onTap: () {},
                  icon: 'assets/icons/Apple - icon.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
