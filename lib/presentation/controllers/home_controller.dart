import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isSelected = false.obs;
  Rxn<String> selectedTheNationality = Rxn<String>();

  RxInt adultsNumber = 3.obs;
  RxInt childrenNumber = 1.obs;
  RxInt roomNumber = 1.obs;

  Rx<DateTimeRange> dateTimeRange = DateTimeRange(
    start: DateTime(2023, 1, 1),
    end: DateTime(2023, 2, 1),
  ).obs;

  Future pickTime(BuildContext context) async {
    DateTimeRange? newDateTimeRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        initialDateRange: dateTimeRange.value);
    if (newDateTimeRange != null) {
      dateTimeRange.value = newDateTimeRange;
    }
  }

  final List<DropdownMenuItem<Object?>> listOfNationality = const [
    DropdownMenuItem(
      value: "Saudi Arabia",
      child: Text("Saudi Arabia"),
    ),
    DropdownMenuItem(
      value: "Syria",
      child: Text("Syria"),
    ),
  ];
}
