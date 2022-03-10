// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Constant.dart';

class loanOptionItemWidget extends StatelessWidget {
  const loanOptionItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: Get.height / 0.5,
                        child: Column(
                          children: [
                            Container(
                              height: Get.height / 4.5,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: const Color(0xff2B0157),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: kBorderColor.withOpacity(0.1),
                                    width: 1),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: Get.height / 12,
                                      width: Get.width / 6,
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor2,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color:
                                                kBorderColor.withOpacity(0.1),
                                            width: 1),
                                      ),
                                      child: SvgPicture.asset(
                                          "assets/icon/sports_car.svg"),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "Car Loan",
                                      style: GoogleFonts.poppins(
                                        fontSize: Get.width / 29,
                                        color: kTextColorWhite,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    );
  }
}
