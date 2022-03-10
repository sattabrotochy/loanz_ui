import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Common_widget/button_widget.dart';
import '../../../../Constant.dart';
import '../controllers/profile_screen_controller.dart';
import 'component/profile_all_button_list_wideget.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({Key? key}) : super(key: key);

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
                          'Profile',
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Maruf Ahmed',
                      style: GoogleFonts.poppins(
                        fontSize: Get.width / 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    child: Text(
                      'Businessman',
                      style: GoogleFonts.poppins(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const ProfileAllButtonListWidget(),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      height: Get.height / 16,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: kPrimaryColor,
                        ),
                      ),
                      child: Text(
                        "Logout",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 20,
                            color: kTextColorWhite),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        )));
  }
}
