// ignore_for_file: use_key_in_widget_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/Constant.dart';
import 'package:loanz/app/routes/app_pages.dart';
import '../../../../Common_widget/button_widget.dart';
import '../controllers/login_controller.dart';
import 'Component/text_form_widget.dart';

class AuthView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColorWhite,
      body: Stack(
        children: [
          Positioned(
              bottom: 0 - 20,
              left: 15,
              right: 15,
              child: Container(
                  height: Get.height / 2,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Form(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email or Phone",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: Get.width / 28,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormWidget(
                          formFieldValidator: (value) {},
                          onchange: (value) {},
                          icon: Icons.check_circle,
                          iconButton: () {},
                          textInputType: TextInputType.emailAddress,
                          hintText: "example@gmail.com",
                          obscure: false,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "password",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: Get.width / 28,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormWidget(
                          formFieldValidator: (value) {},
                          onchange: (value) {},
                          icon: Icons.visibility_off,
                          iconButton: () {},
                          textInputType: TextInputType.text,
                          hintText: "******",
                          obscure: true,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ButtonWidget(
                          color: kTextColorWhite,
                          borderColor: kPrimaryColor,
                          backgroundColor: kPrimaryColor,
                          text: "Login",
                          press: () {
                            Get.toNamed('/home');
                            //Get.to(() => HomePage());
                          },
                          boxShadow: kBorderColor.withOpacity(0.1),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ButtonWidget(
                          color: kPrimaryColor,
                          borderColor: kBackGroundColorWhite,
                          backgroundColor: kBackGroundColorWhite,
                          text: "SignUp",
                          press: () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                          boxShadow: kGrayColor.withOpacity(0.7),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Forgot password ?",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              fontSize: Get.width / 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
