// ignore_for_file: use_key_in_widget_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/Constant.dart';

import '../../../../Common_widget/button_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';
import 'Component/signUp_text_form_widget.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackGroundColorWhite,
        body: SafeArea(
            child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 35,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "LOANZ",
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w800,
                                color: kPrimaryColor,
                                fontSize: Get.width / 14,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Create an Account",
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: Get.width / 24,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 31,
                                  width: 31,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1627843563095-f6e94676cfe0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"))),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 31,
                                  width: 31,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1572059002053-8cc5ad2f4a38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdvb2dsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"))),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 31,
                                  width: 31,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1585184394271-4c0a47dc59c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGFwcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Or connect with your gmail",
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: kPrimaryColor,
                                fontSize: Get.width / 34,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "First Name ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 28,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SignUPTextFromWidget(
                        formFieldValidator: (value) {},
                        onchange: (value) {},
                        icon: Icons.check_circle_outline,
                        iconButton: () {},
                        textInputType: TextInputType.text,
                        hintText: "Please enter first name",
                        obscure: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Last Name ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 28,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SignUPTextFromWidget(
                        formFieldValidator: (value) {},
                        onchange: (value) {},
                        icon: Icons.check_circle_outline,
                        iconButton: () {},
                        textInputType: TextInputType.text,
                        hintText: "Please enter Last Name",
                        obscure: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "National ID Number ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 28,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SignUPTextFromWidget(
                        formFieldValidator: (value) {},
                        onchange: (value) {},
                        icon: Icons.check_circle_outline,
                        iconButton: () {},
                        textInputType: TextInputType.text,
                        hintText: "Please enter National ID Number",
                        obscure: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: Get.width / 28,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SignUPTextFromWidget(
                        formFieldValidator: (value) {},
                        onchange: (value) {},
                        icon: Icons.check_circle_outline,
                        iconButton: () {},
                        textInputType: TextInputType.emailAddress,
                        hintText: "example@gmail.com",
                        obscure: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: Get.width / 28,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SignUPTextFromWidget(
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
                        text: "SignUp",
                        press: () {
                          Get.toNamed('/otp-verifi');
                        },
                        boxShadow: kBorderColor.withOpacity(0.1),
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account ?",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                    fontSize: Get.width / 28,
                                    color: Colors.black87),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.toNamed(Routes.AUTH);
                                  },
                                  child: Text("Login",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          fontSize: Get.width / 28,
                                          color: kPrimaryColor)))
                            ],
                          ))
                    ],
                  ),
                ))));
  }
}
