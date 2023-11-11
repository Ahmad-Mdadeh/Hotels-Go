import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotelsgo/app/configuration/app_fonts.dart';
import 'package:hotelsgo/app/widget/app_text.dart';
import 'package:hotelsgo/presentation/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              () => HomeScreen(),
              transition: Transition.leftToRightWithFade,
              duration: const Duration(
                milliseconds: 1000,
              ),
            );
          },
          child: AppTextWidget(
            text: "Go to Home Screen",
            fontWeight: AppFontWeight.medium,
            fontSize: AppFontSize.s16.sp,
          ),
        ),
      ),
    );
  }
}
