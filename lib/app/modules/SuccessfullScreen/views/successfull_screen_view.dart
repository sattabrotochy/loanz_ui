import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Common_widget/button_widget.dart';
import '../../../../Constant.dart';
import '../controllers/successfull_screen_controller.dart';

class SuccessfullScreenView extends GetView<SuccessfullScreenController> {
  const SuccessfullScreenView({Key? key}) : super(key: key);

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
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
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
                        child: Image.asset("assets/image/back_image_otp.png")),
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
                            "assets/icon/checked_successfull.svg")),
                  ),
                  Positioned(
                    top: Get.height / 22,
                    left: 0,
                    right: 0,
                    child: Container(
                        alignment: Alignment.center,
                        height: Get.height / 2,
                        // color: Colors.red,
                        width: Get.width / 2,
                        child: Text(
                          "Successful",
                          style: GoogleFonts.poppins(
                            fontSize: Get.width / 20,
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                        )),
                  ),
                  Positioned(
                    top: Get.height / 10,
                    left: 0,
                    right: 0,
                    child: Container(
                        alignment: Alignment.center,
                        height: Get.height / 2,
                        // color: Colors.red,
                        width: Get.width / 2,
                        child: Text(
                          "Your loan request has been submitted succesfully.\n Please wait for response.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: Get.width / 29,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45,
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
                        text: "Proceed",
                        press: () {
                          Get.offNamed('/home');
                        },
                        boxShadow: kGrayColor.withOpacity(0.7),
                      ),
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
