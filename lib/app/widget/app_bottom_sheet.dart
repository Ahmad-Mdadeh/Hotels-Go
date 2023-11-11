import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotelsgo/app/configuration/app_colors.dart';
import 'package:hotelsgo/app/configuration/app_fonts.dart';
import 'package:hotelsgo/app/widget/app_button.dart';
import 'package:hotelsgo/app/widget/app_elevated_button.dart';
import 'package:hotelsgo/app/widget/app_text.dart';
import 'package:hotelsgo/presentation/controllers/home_controller.dart';

class AppBottomSheet extends StatelessWidget {
  AppBottomSheet({super.key});

  final _homeController = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 800.h.w,
        decoration: ShapeDecoration(
          color: AppColor.ofWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                19.0.r,
              ),
              topRight: Radius.circular(
                19.0.r,
              ),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 70.h.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColor.black.withOpacity(0.1),
                    blurRadius: 5.0.r,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    19.0.r,
                  ),
                  topRight: Radius.circular(
                    19.0.r,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextWidget(
                    text: "Rooms and Guests",
                    fontWeight: AppFontWeight.bold,
                    fontSize: AppFontSize.s20.sp,
                  ),

                ],
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0.h.w,
                  horizontal: 20.0.w,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.0.w,
                  ),
                  width: double.infinity,
                  height: 70.h.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.black.withOpacity(0.1),
                        blurRadius: 5.0.r,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(
                      12.0.r,
                    ),
                  ),
                  child: Row(
                    children: [
                      AppTextWidget(
                        text: "Rooms",
                        fontWeight: AppFontWeight.regular,
                        fontSize: AppFontSize.s18.sp,
                      ),
                      const Spacer(),
                      AppButton(
                        boxBorder: Border.all(
                          color: _homeController.roomNumber.value == 1
                              ? AppColor.gradientOne.withOpacity(
                                  0.4,
                                )
                              : AppColor.gradientOne,
                        ),
                        color: AppColor.white,
                        borderRadius: 20.0.r,
                        width: 45.0.w,
                        height: 38.0.h.w,
                        function: () {
                          if (_homeController.roomNumber.value != 1) {
                            _homeController.roomNumber.value--;
                          }
                        },
                        widget: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.remove,
                            color: _homeController.roomNumber.value == 1
                                ? AppColor.gradientOne.withOpacity(
                                    0.4,
                                  )
                                : AppColor.gradientOne,
                            size: 18.w.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: AppTextWidget(
                          text: '${_homeController.roomNumber.value}',
                          fontWeight: AppFontWeight.semiBold,
                          fontSize: AppFontSize.s16.sp,
                        ),
                      ),
                      AppButton(
                        boxBorder: Border.all(
                          color: AppColor.gradientOne,
                        ),
                        color: AppColor.white,
                        borderRadius: 20.0.r,
                        width: 45.0.w,
                        height: 38.0.h.w,
                        function: () {
                          _homeController.roomNumber.value++;
                        },
                        widget: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add,
                            color: AppColor.gradientOne,
                            size: 18.w.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0.w,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.0.w,
                    vertical: 15.0.h.w,
                  ),
                  width: double.infinity,
                  height: 333.h.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.black.withOpacity(0.1),
                        blurRadius: 5.0.r,
                      ),
                    ],
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(
                      12.0.r,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextWidget(
                        text: "ROOM",
                        color: const Color(0xff37454d),
                        fontWeight: AppFontWeight.medium,
                        fontSize: AppFontSize.s16.sp,
                      ),
                      SizedBox(
                        height: 30.h.w,
                      ),
                      Row(
                        children: [
                          AppTextWidget(
                            text: "Adults",
                            color: const Color(0xff37454d),
                            fontWeight: AppFontWeight.regular,
                            fontSize: AppFontSize.s18.sp,
                          ),
                          const Spacer(),
                          AppButton(
                            boxBorder: Border.all(
                              color: _homeController.adultsNumber.value != 0
                                  ? AppColor.gradientOne
                                  : AppColor.gradientOne.withOpacity(
                                      0.4,
                                    ),
                            ),
                            color: AppColor.white,
                            borderRadius: 20.0.r,
                            width: 45.0.w,
                            height: 38.0.h.w,
                            function: () {
                              if (_homeController.adultsNumber.value != 0) {
                                _homeController.adultsNumber.value--;
                              }
                            },
                            widget: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.remove,
                                color: _homeController.adultsNumber.value != 0
                                    ? AppColor.gradientOne
                                    : AppColor.gradientOne.withOpacity(
                                        0.4,
                                      ),
                                size: 18.w.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: AppTextWidget(
                              text: "${_homeController.adultsNumber.value}",
                              fontWeight: AppFontWeight.semiBold,
                              fontSize: AppFontSize.s16.sp,
                            ),
                          ),
                          AppButton(
                            boxBorder: Border.all(
                              color: _homeController.adultsNumber.value != 4
                                  ? AppColor.gradientOne
                                  : AppColor.gradientOne.withOpacity(
                                      0.4,
                                    ),
                            ),
                            color: AppColor.white,
                            borderRadius: 20.0.r,
                            width: 45.0.w,
                            height: 38.0.h.w,
                            function: () {
                              if (_homeController.adultsNumber.value != 4) {
                                _homeController.adultsNumber.value++;
                              }
                            },
                            widget: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.add,
                                color: _homeController.adultsNumber.value != 4
                                    ? AppColor.gradientOne
                                    : AppColor.gradientOne.withOpacity(
                                        0.4,
                                      ),
                                size: 18.w.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h.w,
                      ),
                      Row(
                        children: [
                          AppTextWidget(
                            text: "Children",
                            fontWeight: AppFontWeight.regular,
                            fontSize: AppFontSize.s18.sp,
                          ),
                          const Spacer(),
                          AppButton(
                            boxBorder: Border.all(
                              color: _homeController.childrenNumber.value != 0
                                  ? AppColor.gradientOne
                                  : AppColor.gradientOne.withOpacity(
                                      0.4,
                                    ),
                            ),
                            color: AppColor.white,
                            borderRadius: 20.0.r,
                            width: 45.0.w,
                            height: 38.0.h.w,
                            function: () {
                              if (_homeController.childrenNumber.value != 0) {
                                _homeController.childrenNumber.value--;
                              }
                            },
                            widget: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.remove,
                                color: _homeController.childrenNumber.value != 0
                                    ? AppColor.gradientOne
                                    : AppColor.gradientOne.withOpacity(
                                        0.4,
                                      ),
                                size: 18.w.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: AppTextWidget(
                              text: '${_homeController.childrenNumber.value}',
                              fontWeight: AppFontWeight.semiBold,
                              fontSize: AppFontSize.s16.sp,
                            ),
                          ),
                          AppButton(
                            boxBorder: Border.all(
                              color: AppColor.gradientOne,
                            ),
                            color: AppColor.white,
                            borderRadius: 20.0.r,
                            width: 45.0.w,
                            height: 38.0.h.w,
                            function: () {
                              _homeController.childrenNumber.value++;
                            },
                            widget: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.add,
                                color: AppColor.gradientOne,
                                size: 18.w.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35.h.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 35.0.w,
                        ),
                        child: Row(
                          children: [
                            AppTextWidget(
                              text: "Age of child 1",
                              fontWeight: AppFontWeight.regular,
                              fontSize: AppFontSize.s20.sp,
                            ),
                            const Spacer(),
                            AppTextWidget(
                              color: AppColor.black.withOpacity(
                                0.3,
                              ),
                              text: "14 years",
                              fontWeight: AppFontWeight.regular,
                              fontSize: AppFontSize.s20.sp,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 35.0.w,
                        ),
                        child: Row(
                          children: [
                            AppTextWidget(
                              text: "Age of child 1",
                              fontWeight: AppFontWeight.regular,
                              fontSize: AppFontSize.s20.sp,
                            ),
                            const Spacer(),
                            AppTextWidget(
                              color: AppColor.black.withOpacity(
                                0.3,
                              ),
                              text: "14 years",
                              fontWeight: AppFontWeight.regular,
                              fontSize: AppFontSize.s20.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0.h.w,
                horizontal: 20.0.w,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.0.w,
                ),
                width: double.infinity,
                height: 70.h.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.black.withOpacity(0.1),
                      blurRadius: 5.0.r,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(
                    12.0.r,
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextWidget(
                          text: "Pet-friendly",
                          color: const Color(0xff37454d),
                          fontWeight: AppFontWeight.medium,
                          fontSize: AppFontSize.s18.sp,
                        ),
                        SizedBox(
                          height: 4.0.h.w,
                        ),
                        AppTextWidget(
                          text: "Only Show stays that allow pets",
                          color: const Color(0xff38464e),
                          fontWeight: AppFontWeight.semiLight,
                          fontSize: AppFontSize.s12.sp,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Obx(
                      () => Switch(
                        value: _homeController.isSelected.value,
                        onChanged: (value) {
                          _homeController.isSelected(
                            !(_homeController.isSelected.value),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20.0.h.w,
              ),
              child: AppElevatedButton(
                color: AppColor.button,
                borderRadius: 8.0.r,
                width: 350.0.w,
                height: 55.0.h.w,
                function: () {
                  Get.back();
                },
                widget: Align(
                  alignment: Alignment.center,
                  child: AppTextWidget(
                    color: AppColor.white,
                    text: "Apply",
                    fontWeight: AppFontWeight.medium,
                    fontSize: AppFontSize.s20.sp,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
