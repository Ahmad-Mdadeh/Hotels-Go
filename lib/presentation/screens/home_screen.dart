import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotelsgo/app/configuration/app_colors.dart';
import 'package:hotelsgo/app/configuration/app_fonts.dart';
import 'package:hotelsgo/app/widget/app_bottom_sheet.dart';
import 'package:hotelsgo/app/widget/app_custom_paint.dart';
import 'package:hotelsgo/app/widget/app_drop_down_button_form_field.dart';
import 'package:hotelsgo/app/widget/app_text.dart';
import 'package:hotelsgo/app/widget/app_text_from_field.dart';
import 'package:hotelsgo/presentation/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _homeController = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Positioned(
              bottom: 25.0.h.w,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.0.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomPaint(

                      painter: RPSCustomPainter(),
                      child: SizedBox(
                        width: size.width * 0.49,
                        height: size.width * 0.16,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            10.0.w,
                            23.0.h.w,
                            10.0.w,
                            23.0.h.w,
                          ),
                          child: AppTextWidget(
                            color: AppColor.white,
                            text: "Hotels Search",
                            fontWeight: AppFontWeight.bold,
                            fontSize: AppFontSize.s20.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h.w,
                    ),
                    Container(
                      width: double.infinity,
                      height: 350.0.h.w,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(
                          15.0.r,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 14.0.h.w,
                              horizontal: 15.0.w,
                            ),
                            width: double.infinity,
                            height: 300.0.h.w,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  AppColor.gradientOne,
                                  AppColor.gradientTwo,
                                ],
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                15.0.r,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppTextFromFieldWidget(
                                  function: (value) {},
                                  hintTextSize: 20.0.sp,
                                  hintText: "Select city",
                                  cursorColor: AppColor.textColor,
                                  textInputType: TextInputType.text,
                                  borderRadius: 18.0.r,
                                ),
                                InkWell(
                                  onTap: () async {
                                    _homeController.pickTime(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(6.0.r),
                                    width: double.infinity,
                                    height: 65.h.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        15.0.r,
                                      ),
                                      color: AppColor.white,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          12.0.r,
                                        ),
                                        border: Border.all(
                                          color: AppColor.gradientOne,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Obx(
                                            () => AppTextWidget(
                                              color: AppColor.textColor,
                                              text:
                                                  "${_homeController.dateTimeRange.value.start.year}/${_homeController.dateTimeRange.value.start.month}/${_homeController.dateTimeRange.value.start.day}   ==>   ${_homeController.dateTimeRange.value.end.year}/${_homeController.dateTimeRange.value.end.month}/${_homeController.dateTimeRange.value.end.day}",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    right: 10.0.w,
                                  ),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 60.h.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      15.0.r,
                                    ),
                                    color: AppColor.white,
                                  ),
                                  child: AppDropdownButtonFormField(),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    right: 10.0.w,
                                  ),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 55.h.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      15.0.r,
                                    ),
                                    color: AppColor.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 18.0.w,
                                      right: 10.0.w,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Get.bottomSheet(
                                          AppBottomSheet(),
                                          isScrollControlled: true,
                                        );
                                      },
                                      child: Obx(
                                        () => Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppTextWidget(
                                              color: AppColor.textColor,
                                              text:
                                                  "${_homeController.roomNumber.value} Room, ${_homeController.adultsNumber.value} Adult, ${_homeController.childrenNumber.value} Children",
                                              fontWeight:
                                                  AppFontWeight.semiBold,
                                              fontSize: AppFontSize.s16.sp,
                                            ),
                                            const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: AppColor.gradientOne,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8.0.h.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppTextWidget(
                                text: "Find Hotels",
                                fontSize: 20.0.sp,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                              ),
                              SizedBox(
                                width: 5.0.w,
                              ),
                              Icon(
                                Icons.search,
                                color: AppColor.white,
                                size: 35.h.w,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
