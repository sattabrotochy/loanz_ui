// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/Constant.dart';

import '../controllers/personal_info_controller.dart';
import 'component/task_bar.dart';
import 'component/text_input_form_widget.dart';

class PersonalInfoView extends GetView<PersonalInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Container(
            //height: Get.height / 10,
            color: kPrimaryColor2,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(left: 15, top: 15),
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
                      'Personal info',
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
          top: 20,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 25, right: 20, top: 20),
            margin: EdgeInsets.only(top: Get.height / 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                const TaskBarWidget(
                  activeColor: kPrimaryColor,
                  inactivieColor: kTextColor2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Please fill up the following information",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFormWidgetPersonalInfo()
              ]),
            ),
          ),
        ),
      ],
    )));
  }
}
