// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Common_widget/button_widget.dart';
import '../../../../Constant.dart';
import '../controllers/apply_loan_controller.dart';
import 'Component/text_form_widget_apply_loan_submit.dart';

class ApplyLoanSubmit extends GetView<ApplyLoanController> {
  const ApplyLoanSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
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
          Container(
            height: Get.height / 10,
            width: double.maxFinite,
            margin:
                EdgeInsets.only(left: Get.width / 20, right: Get.width / 20),
            child: Row(children: [
              Expanded(
                flex: 1,
                child: Row(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 10, top: 2),
                    height: Get.height / 18,
                    width: Get.width / 9,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 252, 252),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/icon/home.svg",
                      color: kPrimaryColor,
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 7, top: 20),
                            child: Text(
                              "Home Loan",
                              style: TextStyle(
                                  fontSize: Get.width / 28,
                                  fontWeight: FontWeight.bold,
                                  color: kTextColorWhite),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 7, top: 4),
                            child: Text(
                              "Lowest interest",
                              style: TextStyle(
                                  fontSize: Get.width / 30,
                                  fontWeight: FontWeight.normal,
                                  color: kTextColorWhite),
                            ),
                          ),
                        ],
                      )),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    alignment: Alignment.center,
                    height: Get.height / 21,
                    child: Text(
                      "\$20,000",
                      style: TextStyle(
                          fontSize: Get.width / 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: kTextColorWhite),
                    ),
                  ),
                ]),
              )
            ]),
          ),
          Divider(
            thickness: 1,
            color: kTextColorWhite.withOpacity(0.1),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("0.5%",
                          style: TextStyle(
                              fontSize: Get.width / 25,
                              fontWeight: FontWeight.bold,
                              color: kTextColorWhite)),
                      const SizedBox(
                        height: 7,
                      ),
                      Text("Interest",
                          style: TextStyle(
                              fontSize: Get.width / 29,
                              fontWeight: FontWeight.normal,
                              color: kTextColor2)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("6 Months",
                          style: TextStyle(
                              fontSize: Get.width / 25,
                              fontWeight: FontWeight.bold,
                              color: kTextColorWhite)),
                      const SizedBox(
                        height: 7,
                      ),
                      Text("Duration",
                          style: TextStyle(
                              fontSize: Get.width / 29,
                              fontWeight: FontWeight.normal,
                              color: kTextColor2)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("pay",
                          style: TextStyle(
                              fontSize: Get.width / 25,
                              fontWeight: FontWeight.bold,
                              color: kTextColorWhite)),
                      const SizedBox(
                        height: 7,
                      ),
                      Text("Monthly",
                          style: TextStyle(
                              fontSize: Get.width / 29,
                              fontWeight: FontWeight.normal,
                              color: kTextColor2)),
                    ],
                  ),
                ]),
          ),
          const SizedBox(height: 25),
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
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: Get.height / 20,
                            left: Get.width / 20,
                            right: Get.width / 20),
                        alignment: Alignment.centerLeft,
                        child: Text("Submit Loan Request",
                            style: TextStyle(
                                fontSize: Get.width / 22,
                                fontWeight: FontWeight.bold,
                                color: kTextColor)),
                      ),
                      const SizedBox(height: 25),

                      /// Purpose of Loan
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Text("Purpose of Loan",
                            style: TextStyle(
                                fontSize: Get.width / 28,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: kTextColor)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormWidgetApllyLoanSubmit(
                          hintText: "For buying new home",
                          textInputType: TextInputType.text,
                          onchange: (value) {},
                          formFieldValidator: (value) {},
                        ),
                      ),

                      /// Bank Information
                      ///

                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Text("Bank Information",
                            style: TextStyle(
                                fontSize: Get.width / 28,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: kTextColor)),
                      ),

                      /// account number
                      ///

                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Text("Account Number",
                            style: TextStyle(
                                fontSize: Get.width / 28,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: kTextColor)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormWidgetApllyLoanSubmit(
                          hintText: " 68754546875",
                          textInputType: TextInputType.number,
                          onchange: (value) {},
                          formFieldValidator: (value) {},
                        ),
                      ),

                      /// Zip Code
                      ///

                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Text("Zip Code",
                            style: TextStyle(
                                fontSize: Get.width / 28,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: kTextColor)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormWidgetApllyLoanSubmit(
                          hintText: " 3150",
                          textInputType: TextInputType.number,
                          onchange: (value) {},
                          formFieldValidator: (value) {},
                        ),
                      ),
                    ]),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: ButtonWidget(
                      color: kTextColorWhite,
                      borderColor: kPrimaryColor,
                      backgroundColor: kPrimaryColor,
                      text: "Submit",
                      press: () {
                        Get.toNamed('/successfull-screen');
                      },
                      boxShadow: kBorderColor.withOpacity(0.1),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
