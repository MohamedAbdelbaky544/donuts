import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';
import '../../component/custom_button.dart';
import '../../component/custom_divider.dart';
import '../../component/custom_text_form.dart';
import '../../component/social_icon.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
              child: Text(
                'Forget Password !',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: grey,
                  fontFamily: 'Lato',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            onPress: () {},
            buttonColor: buttonColorbackground,
            text: 'Sign In',
            textColor: Colors.white,
          ),
          SizedBox(
            height: 16.h,
          ),
          const CustomDivider(
            text: 'Or Sign In With',
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
