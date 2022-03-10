import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/Constant.dart';

import '../../controllers/apply_loan_controller.dart';

class TimeDurationWidegt extends StatelessWidget {
  const TimeDurationWidegt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: GetBuilder<ApplyLoanController>(builder: (controller) {
        return Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Time Duration",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: Get.width / 25,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: kTextColor,
                  ),
                )),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  controller.timeDurationSet(1);
                  controller.setTwelveMonthFalse();
                  controller.setEighteenMonthFalse();
                  controller.setTwentyFourMonthFalse();
                  controller.setThirtyFalse();
                  controller.setThirtySixMonthFalse();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: Get.height / 21,
                  margin: const EdgeInsets.only(right: 10),
                  width: Get.width / 4,
                  decoration: BoxDecoration(
                    color: controller.sixMonth == true
                        ? kPrimaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: kPrimaryColor.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "6 months",
                    style: TextStyle(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: controller.sixMonth == true
                            ? Colors.white
                            : kPrimaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.timeDurationSet(2);
                  controller.setSixMonthFalse();
                  controller.setEighteenMonthFalse();
                  controller.setTwentyFourMonthFalse();
                  controller.setThirtyFalse();
                  controller.setThirtySixMonthFalse();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: Get.height / 21,
                  margin: const EdgeInsets.only(right: 10),
                  width: Get.width / 4,
                  decoration: BoxDecoration(
                    color: controller.twelveMonth == true
                        ? kPrimaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "12 months",
                    style: TextStyle(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: controller.twelveMonth == true
                            ? Colors.white
                            : kPrimaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.timeDurationSet(3);

                  controller.setSixMonthFalse();
                  controller.setTwelveMonthFalse();
                  controller.setTwentyFourMonthFalse();
                  controller.setThirtyFalse();
                  controller.setThirtySixMonthFalse();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: Get.height / 21,
                  margin: const EdgeInsets.only(right: 10),
                  width: Get.width / 4,
                  decoration: BoxDecoration(
                    color: controller.eighteenMonth == true
                        ? kPrimaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "18 months",
                    style: TextStyle(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: controller.eighteenMonth == true
                            ? Colors.white
                            : kPrimaryColor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  controller.timeDurationSet(4);

                  controller.setSixMonthFalse();
                  controller.setTwelveMonthFalse();
                  controller.setEighteenMonthFalse();
                  controller.setThirtyFalse();
                  controller.setThirtySixMonthFalse();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: Get.height / 21,
                  margin: const EdgeInsets.only(right: 10),
                  width: Get.width / 4,
                  decoration: BoxDecoration(
                    color: controller.twentyFourMonth == true
                        ? kPrimaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "24 months",
                    style: TextStyle(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: controller.twentyFourMonth == true
                            ? Colors.white
                            : kPrimaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.timeDurationSet(5);
                  controller.setSixMonthFalse();
                  controller.setTwelveMonthFalse();
                  controller.setEighteenMonthFalse();
                  controller.setTwentyFourMonthFalse();
                  controller.setThirtySixMonthFalse();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: Get.height / 21,
                  margin: const EdgeInsets.only(right: 10),
                  width: Get.width / 4,
                  decoration: BoxDecoration(
                    color: controller.thirty == true
                        ? kPrimaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "30 months",
                    style: TextStyle(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: controller.thirty == true
                            ? Colors.white
                            : kPrimaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.timeDurationSet(6);
                  controller.setSixMonthFalse();
                  controller.setTwelveMonthFalse();
                  controller.setEighteenMonthFalse();
                  controller.setTwentyFourMonthFalse();
                  controller.setThirtyFalse();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: Get.height / 21,
                  margin: const EdgeInsets.only(right: 10),
                  width: Get.width / 4,
                  decoration: BoxDecoration(
                    color: controller.thirtySixMonth == true
                        ? kPrimaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "36 months",
                    style: TextStyle(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: controller.thirtySixMonth == true
                            ? Colors.white
                            : kPrimaryColor),
                  ),
                ),
              ),
            ],
          )
        ]);
      }),
    );
  }
}
