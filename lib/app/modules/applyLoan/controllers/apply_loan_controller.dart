// ignore_for_file: unnecessary_overrides, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplyLoanController extends GetxController {
  final count = 0.obs;
  RangeValues currentRangeValues = const RangeValues(100, 25000);

  var monthCheck = 1;

  bool sixMonth = false;
  bool twelveMonth = false;
  bool eighteenMonth = false;
  bool twentyFourMonth = false;
  bool thirty = false;
  bool thirtySixMonth = false;

  setSixMonthFalse() {
    sixMonth = false;
    update();
  }

  setSixMonthTrue() {
    sixMonth = true;
    update();
  }

  setTwelveMonthFalse() {
    twelveMonth = false;
    update();
  }

  setTwelveMonthTrue() {
    twelveMonth = true;
    update();
  }

  setEighteenMonthFalse() {
    eighteenMonth = false;
    update();
  }

  setEighteenMonthTrue() {
    eighteenMonth = true;
    update();
  }

  setTwentyFourMonthFalse() {
    twentyFourMonth = false;
    update();
  }

  setTwentyFourMonthTrue() {
    twentyFourMonth = true;
    update();
  }

  setThirtyFalse() {
    thirty = false;
    update();
  }

  setThirtyTrue() {
    thirty = true;
    update();
  }

  setThirtySixMonthFalse() {
    thirtySixMonth = false;
    update();
  }

  setThirtySixMonthTrue() {
    thirtySixMonth = true;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    timeDurationSet(1);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  updateRangeValues(values) {
    currentRangeValues = values;
    update();
  }

  timeDurationSet(int id) {
    if (1 == id) {
      return setSixMonthTrue();
    }
    if (2 == id) {
      return setTwelveMonthTrue();
    }
    if (3 == id) {
      return setEighteenMonthTrue();
    }
    if (4 == id) {
      return setTwentyFourMonthTrue();
    }
    if (5 == id) {
      return setThirtyTrue();
    }
    if (6 == id) {
      return setThirtySixMonthTrue();
    }
    update();
  }
}
