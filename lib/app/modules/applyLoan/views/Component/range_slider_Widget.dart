// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loanz/Constant.dart';
import 'package:loanz/app/modules/applyLoan/controllers/apply_loan_controller.dart';

class ReangeSliderWidget extends StatelessWidget {
  const ReangeSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplyLoanController>(builder: (controller) {
      return RangeSlider(
        values: controller.currentRangeValues,
        activeColor: kPrimaryColor,
        inactiveColor: kPrimaryColor.withOpacity(0.3),
        max: 25000,
        divisions: 100,
        labels: RangeLabels(
          controller.currentRangeValues.start.round().toString(),
          controller.currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          controller.updateRangeValues(values);
        },
      );
    });
  }
}
