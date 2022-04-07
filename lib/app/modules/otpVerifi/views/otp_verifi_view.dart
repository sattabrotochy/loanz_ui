// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/app/modules/otpVerifi/views/component/otp_verify_input_widget.dart';

import '../../../../Common_widget/button_widget.dart';
import '../../../../Constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_verifi_controller.dart';

class OtpVerifiView extends GetView<OtpVerifiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Stack(
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
                      child: Container(
                        margin: EdgeInsets.only(right: Get.width / 17, top: 12),
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Verification',
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
            Positioned(
              top: Get.height / 150,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Get.height / 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0 - Get.height / 10,
                      left: 0,
                      right: 0,
                      child: Container(
                          alignment: Alignment.center,
                          height: Get.height / 2,
                          // color: Colors.red,
                          width: Get.width / 2,
                          child:
                              Image.asset("assets/image/back_image_otp.png")),
                    ),
                    Positioned(
                      top: 0 - Get.height / 12,
                      left: 0,
                      right: 0,
                      child: Container(
                          alignment: Alignment.center,
                          height: Get.height / 2,
                          // color: Colors.red,
                          width: Get.width / 2,
                          child: SvgPicture.asset(
                              "assets/icon/otp_email_icon.svg")),
                    ),
                    Positioned(
                      top: Get.height / 24,
                      left: 0,
                      right: 0,
                      child: Container(
                          alignment: Alignment.center,
                          height: Get.height / 2,
                          // color: Colors.red,
                          width: Get.width / 2,
                          child: Text(
                            "Enter Verification Code",
                            style: GoogleFonts.poppins(
                              fontSize: Get.width / 25,
                              fontWeight: FontWeight.w500,
                              color: kTextColor,
                            ),
                          )),
                    ),
                    Positioned(
                      top: Get.height / 15,
                      left: 0,
                      right: 0,
                      child: Container(
                          alignment: Alignment.center,
                          height: Get.height / 2,
                          // color: Colors.red,
                          width: Get.width / 2,
                          child: Text(
                            "Please enter the 5-digit verification code",
                            style: GoogleFonts.poppins(
                              fontSize: Get.width / 29,
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                            ),
                          )),
                    ),
                    Positioned(
                      top: Get.height / 11,
                      left: 0,
                      right: 0,
                      child: Container(
                          alignment: Alignment.center,
                          height: Get.height / 2,
                          // color: Colors.red,
                          width: Get.width / 2,
                          child: Text(
                            "Code we sent at +0123456789.",
                            style: GoogleFonts.poppins(
                              fontSize: Get.width / 29,
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                            ),
                          )),
                    ),
                    Positioned(
                        top: Get.height / 2.5,
                        left: 0,
                        right: 0,
                        child: const VerifyScreen()),
                    Positioned(
                      bottom: Get.height / 17,
                      left: 0,
                      right: 0,
                      child: Container(
                          alignment: Alignment.center,
                          height: Get.height / 2,
                          // color: Colors.red,
                          width: Get.width / 2,
                          child: Text(
                            "Didn’t receive any code ?",
                            style: GoogleFonts.poppins(
                              fontSize: Get.width / 27,
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                            ),
                          )),
                    ),
                    Positioned(
                      bottom: Get.height / 35,
                      left: 0,
                      right: 0,
                      child: Container(
                          alignment: Alignment.center,
                          height: Get.height / 2,
                          // color: Colors.red,
                          width: Get.width / 2,
                          child: Text(
                            "Resend Code",
                            style: GoogleFonts.poppins(
                              fontSize: Get.width / 27,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor,
                            ),
                          )),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 10,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Get.width / 20, right: Get.width / 20),
                        child: ButtonWidget(
                          color: kBackGroundColorWhite,
                          borderColor: kPrimaryColor,
                          backgroundColor: kPrimaryColor,
                          text: "Submit",
                          press: () {
                            Get.toNamed(Routes.PERSONAL_INFO);
                          },
                          boxShadow: kGrayColor.withOpacity(0.7),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
