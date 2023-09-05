import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    this.onPress,
  });
  final String text;
  final Color textColor;
  final Color buttonColor;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
        shadowColor:
            MaterialStatePropertyAll<Color>(shadowColor.withOpacity(0.5)),
        shape: MaterialStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(
            side: const BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: buttonColorbackground),
            borderRadius: BorderRadius.circular(
              30.r,
            ),
          ),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(Size(343.w, 56.h)),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontFamily: 'Lato',
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
