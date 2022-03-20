import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanz/app/modules/personal_info/views/component/text_field_widget.dart';

import '../../../../../Common_widget/button_widget.dart';
import '../../../../../Constant.dart';

class TextFormWidgetPersonalInfo extends StatelessWidget {
  const TextFormWidgetPersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// First name
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "First Name ",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: kTextColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFieldWidget(
            formFieldValidator: (value) {},
            onchange: (value) {},
            iconButton: () {},
            textInputType: TextInputType.text,
            hintText: "Please enter first name",
            obscure: false,
          ),

          /// last name
          ///
          const SizedBox(
            height: 15,
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Last Name ",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: kTextColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFieldWidget(
            formFieldValidator: (value) {},
            onchange: (value) {},
            iconButton: () {},
            textInputType: TextInputType.text,
            hintText: "Please enter Last name",
            obscure: false,
          ),

          ///  Date of Birth
          ///
          const SizedBox(
            height: 15,
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              " Date of Birth ",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: kTextColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFieldWidget(
            formFieldValidator: (value) {},
            onchange: (value) {},
            iconButton: () {},
            textInputType: TextInputType.text,
            hintText: "dd/mm/yy",
            obscure: false,
          ),

          ///  Address
          ///
          const SizedBox(
            height: 15,
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Address",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: kTextColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFieldWidget(
            formFieldValidator: (value) {},
            onchange: (value) {},
            iconButton: () {},
            textInputType: TextInputType.text,
            hintText: "Please enter address",
            obscure: false,
          ),

          ///  Zip Code
          ///
          const SizedBox(
            height: 15,
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Zip Code",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: kTextColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFieldWidget(
            formFieldValidator: (value) {},
            onchange: (value) {},
            iconButton: () {},
            textInputType: TextInputType.text,
            hintText: "Please enter Zip code",
            obscure: false,
          ),
          const SizedBox(
            height: 25,
          ),
          ButtonWidget(
            color: kTextColorWhite,
            borderColor: kPrimaryColor,
            backgroundColor: kPrimaryColor,
            text: "Submit",
            press: () {
              Get.toNamed('/persona-info-2');
            },
            boxShadow: kBorderColor.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
