import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotelsgo/app/configuration/app_colors.dart';
import 'package:hotelsgo/app/widget/app_text.dart';
import 'package:hotelsgo/presentation/controllers/home_controller.dart';

class AppDropdownButtonFormField extends StatelessWidget {
   AppDropdownButtonFormField({super.key});
  final _homeController = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField(
      padding: EdgeInsets.only(
        left: 40.0.w,
        right: 12.0.w,
      ),
      borderRadius: BorderRadius.circular(
        15.0.r,
      ),
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      value: _homeController
          .selectedTheNationality.value,
      hint: AppTextWidget(
        text: "Select Nationality",
        fontWeight: FontWeight.normal,
        fontSize: 17.0.sp,
        color: AppColor.textColor,
      ),
      isExpanded: true,
      items: _homeController.listOfNationality,
      onChanged: (value) => {},
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: AppColor.gradientOne,
      ),
      iconEnabledColor: Colors.white,
      style: TextStyle(
        color: AppColor.textColor,
        fontSize: 17.0.sp,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
