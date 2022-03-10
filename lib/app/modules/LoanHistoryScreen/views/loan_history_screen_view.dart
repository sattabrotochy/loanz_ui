import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/app/modules/LoanHistoryScreen/loan_histroy_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../Constant.dart';
import '../controllers/loan_history_screen_controller.dart';

class LoanHistoryScreenView extends GetView<LoanHistoryScreenController> {
  const LoanHistoryScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor2,
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
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: Get.width / 5, top: 12),
                        alignment: Alignment.center,
                        child: Text(
                          'Loan History',
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
            Expanded(
              child: Container(
                height: double.minPositive,
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: Get.height / 20,
                        left: Get.width / 20,
                        right: Get.width / 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Loan History",
                        style: TextStyle(
                            fontSize: Get.height / 40,
                            fontWeight: FontWeight.bold,
                            color: kTextColor)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height / 6,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    padding: const EdgeInsets.only(left: 10),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: kBackGroundColorWhite,
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
                    child: Row(children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.only(
                                            left: 10, top: 2),
                                        height: Get.height / 18,
                                        width: Get.width / 9,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFCDFCF0),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/icon/home.svg",
                                        ),
                                      ),
                                      Expanded(
                                        child: Expanded(
                                            flex: 1,
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  margin: const EdgeInsets.only(
                                                      left: 7, top: 15),
                                                  child: Text(
                                                    "Home Loan",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width / 28,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: kTextColor),
                                                  ),
                                                ),
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  margin: const EdgeInsets.only(
                                                      left: 7, top: 4),
                                                  child: Text(
                                                    "Lowest interest",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width / 30,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: kTextColor),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("0.5%",
                                                style: TextStyle(
                                                    fontSize: Get.width / 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: kTextColor)),
                                            Text("Interest Rate",
                                                style: TextStyle(
                                                    fontSize: Get.width / 25,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.grey[400])),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("2 years",
                                                style: TextStyle(
                                                    fontSize: Get.width / 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: kTextColor)),
                                            Text("Max Duration",
                                                style: TextStyle(
                                                    fontSize: Get.width / 25,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.grey[400])),
                                          ],
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: Get.height / 5,
                            width: Get.width / 10,
                            child: SfCircularChart(
                              //legend: Legend(isVisible: true),
                              series: <CircularSeries>[
                                PieSeries<LoanHistory, String>(
                                  dataSource: controller.loanHistoryDataList,
                                  animationDuration: 1000,
                                  explode: true,
                                  animationDelay: 10.0,
                                  enableTooltip: true,
                                  explodeIndex: 0,
                                  xValueMapper: (LoanHistory loanHistory, _) =>
                                      loanHistory.name,
                                  yValueMapper: (LoanHistory loanHistory, _) =>
                                      loanHistory.unpaid,
                                  dataLabelSettings: const DataLabelSettings(
                                    isVisible: true,
                                  ),
                                )
                              ],
                            ),
                          )),
                    ]),
                  )
                ]),
              ),
            )
          ],
        )));
  }
}
