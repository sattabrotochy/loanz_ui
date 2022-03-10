import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Constant.dart';

class ProfileAllButtonListWidget extends StatelessWidget {
  const ProfileAllButtonListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Creadit Limit

        Container(
          height: Get.height / 18,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprofileButtonBackGrroundColor,
          ),
          child: Row(children: [
            SvgPicture.asset("assets/icon/Outline.svg"),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Creadit Limit",
                    style: GoogleFonts.poppins(
                      fontSize: Get.width / 29,
                      fontWeight: FontWeight.normal,
                      color: kBackGroundColorWhite,
                    )),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: Get.width / 25,
            ),
          ]),
        ),

        const SizedBox(
          height: 10,
        ),

        ///Loan History

        InkWell(
          onTap: () {
            Get.toNamed('/loan-history-screen');
          },
          child: Container(
            height: Get.height / 18,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kprofileButtonBackGrroundColor,
            ),
            child: Row(children: [
              SvgPicture.asset("assets/icon/Outline.svg"),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text("Loan History",
                      style: GoogleFonts.poppins(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: kBackGroundColorWhite,
                      )),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: Get.width / 25,
              ),
            ]),
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        ///Security & Privacy

        Container(
          height: Get.height / 18,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprofileButtonBackGrroundColor,
          ),
          child: Row(children: [
            Icon(
              Icons.lock,
              color: Colors.white,
              size: Get.width / 25,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Security & Privacy",
                    style: GoogleFonts.poppins(
                      fontSize: Get.width / 29,
                      fontWeight: FontWeight.normal,
                      color: kBackGroundColorWhite,
                    )),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: Get.width / 25,
            ),
          ]),
        ),

        const SizedBox(
          height: 10,
        ),

        ///Online Services

        Container(
          height: Get.height / 18,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprofileButtonBackGrroundColor,
          ),
          child: Row(children: [
            Icon(
              Icons.miscellaneous_services,
              color: Colors.white,
              size: Get.width / 25,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Online Services",
                    style: GoogleFonts.poppins(
                      fontSize: Get.width / 29,
                      fontWeight: FontWeight.normal,
                      color: kBackGroundColorWhite,
                    )),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: Get.width / 25,
            ),
          ]),
        ),

        const SizedBox(
          height: 10,
        ),

        ///Bank Card

        Container(
          height: Get.height / 18,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprofileButtonBackGrroundColor,
          ),
          child: Row(children: [
            Icon(
              Icons.home_work_sharp,
              color: Colors.white,
              size: Get.width / 25,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Bank Card",
                    style: GoogleFonts.poppins(
                      fontSize: Get.width / 29,
                      fontWeight: FontWeight.normal,
                      color: kBackGroundColorWhite,
                    )),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: Get.width / 25,
            ),
          ]),
        ),
        //CupertinoIcons

        const SizedBox(
          height: 10,
        ),

        ///Varification

        Container(
          height: Get.height / 18,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprofileButtonBackGrroundColor,
          ),
          child: Row(children: [
            Icon(
              Icons.verified_user_outlined,
              color: Colors.white,
              size: Get.width / 25,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Varification",
                    style: GoogleFonts.poppins(
                      fontSize: Get.width / 29,
                      fontWeight: FontWeight.normal,
                      color: kBackGroundColorWhite,
                    )),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: Get.width / 25,
            ),
          ]),
        ),

        const SizedBox(
          height: 10,
        ),

        ///Help & Feedback

        Container(
          height: Get.height / 18,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprofileButtonBackGrroundColor,
          ),
          child: Row(children: [
            Icon(
              Icons.help,
              color: Colors.white,
              size: Get.width / 25,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Help & Feedback",
                    style: GoogleFonts.poppins(
                      fontSize: Get.width / 29,
                      fontWeight: FontWeight.normal,
                      color: kBackGroundColorWhite,
                    )),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: Get.width / 25,
            ),
          ]),
        ),

        const SizedBox(
          height: 10,
        ),

        ///Invite Friends

        Container(
          height: Get.height / 18,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprofileButtonBackGrroundColor,
          ),
          child: Row(children: [
            Icon(
              CupertinoIcons.person_add_solid,
              color: Colors.white,
              size: Get.width / 25,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Invite Friends",
                    style: GoogleFonts.poppins(
                      fontSize: Get.width / 29,
                      fontWeight: FontWeight.normal,
                      color: kBackGroundColorWhite,
                    )),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: Get.width / 25,
            ),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
