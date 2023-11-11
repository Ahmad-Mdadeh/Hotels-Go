import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo/app/configuration/app_colors.dart';

class AppTextFromFieldWidget extends StatelessWidget {
  final TextInputType textInputType;
  final Function function;
  final Color? cursorColor;
  final double borderRadius;
  final String hintText;
  final double hintTextSize;

  const AppTextFromFieldWidget({
    super.key,
    required this.function,
    required this.textInputType,
    this.cursorColor,
    required this.borderRadius,
    required this.hintText,
    required this.hintTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0.h.w),
      height: 55.h.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
        color: AppColor.white,
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        onChanged: (value) => function(value),
        cursorColor: cursorColor,
        keyboardType: textInputType,
        style: TextStyle(
          color: AppColor.textColor,
          fontSize: 17.0.sp,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColor.textColor,
            fontSize: hintTextSize,
          ),
          filled: false,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.gradientTwo,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                borderRadius,
              ),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.gradientTwo,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                borderRadius,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
