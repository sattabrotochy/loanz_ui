import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/Constant.dart';
import 'package:loanz/app/modules/applyLoan/views/Component/time_duration_widget.dart';
import '../../../../Common_widget/button_widget.dart';
import '../controllers/apply_loan_controller.dart';
import 'Component/range_slider_Widget.dart';

class ApplyLoanView extends GetView<ApplyLoanController> {
  const ApplyLoanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      body: SafeArea(
        child: Column(children: [
          Container(
              //height: Get.height / 10,
              color: kPrimaryColor2,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: Get.width / 17, top: 12),
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Apply Loan',
                        style: GoogleFonts.poppins(
                          fontSize: Get.width / 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
                height: double.minPositive,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: Get.height / 20,
                              left: Get.width / 20,
                              right: Get.width / 20),
                          alignment: Alignment.centerLeft,
                          child: Text("Apply Loan",
                              style: TextStyle(
                                  fontSize: Get.height / 40,
                                  fontWeight: FontWeight.bold,
                                  color: kTextColor)),
                        ),
                        Container(
                          height: Get.height / 10,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                              top: Get.height / 20,
                              left: Get.width / 20,
                              right: Get.width / 20),
                          child: Row(children: [
                            Expanded(
                              flex: 1,
                              child: Row(children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  height: Get.height / 18,
                                  width: Get.width / 9,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 210, 205, 252),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/icon/home.svg",
                                    color: kPrimaryColor2,
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin: const EdgeInsets.only(
                                              left: 7, top: 20),
                                          child: Text(
                                            "Home Loan",
                                            style: TextStyle(
                                                fontSize: Get.width / 28,
                                                fontWeight: FontWeight.bold,
                                                color: kTextColor),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin: const EdgeInsets.only(
                                              left: 7, top: 4),
                                          child: Text(
                                            "Lowest interest",
                                            style: TextStyle(
                                                fontSize: Get.width / 30,
                                                fontWeight: FontWeight.normal,
                                                color: kTextColor),
                                          ),
                                        ),
                                      ],
                                    )),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: Get.height / 21,
                                      child: Text(
                                        "\$20,000",
                                        style: TextStyle(
                                            fontSize: Get.width / 18,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: kPrimaryColor2),
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                        ),
                        Container(
                          height: Get.height / 10,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                              top: Get.height / 20,
                              left: Get.width / 20,
                              right: Get.width / 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Loan Range",
                                    style: GoogleFonts.poppins(
                                      fontSize: Get.width / 25,
                                      fontWeight: FontWeight.w600,
                                      color: kTextColor,
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down,
                                      color: kPrimaryColor,
                                      size: Get.width / 12),
                                ],
                              ),
                              Text(
                                "\$5000 - \$25000",
                                style: GoogleFonts.poppins(
                                  fontSize: Get.width / 25,
                                  fontWeight: FontWeight.w600,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const ReangeSliderWidget(),
                        const TimeDurationWidegt()
                      ],
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: ButtonWidget(
                        color: kTextColorWhite,
                        borderColor: kPrimaryColor,
                        backgroundColor: kPrimaryColor,
                        text: "Continue",
                        press: () {
                          Get.toNamed('/apply-loan_submit');
                        },
                        boxShadow: kBorderColor.withOpacity(0.1),
                      ),
                    )
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
