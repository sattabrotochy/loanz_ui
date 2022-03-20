import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Common_widget/button_widget.dart';
import '../../../../../Constant.dart';

class PersonalInfoWidget extends StatefulWidget {
  const PersonalInfoWidget({Key? key}) : super(key: key);

  @override
  _PersonalInfoWidgetState createState() => _PersonalInfoWidgetState();
}

class _PersonalInfoWidgetState extends State<PersonalInfoWidget> {
  String genderValue = 'Male';
  String educationValue = "BMath";
  String occupationValue = "Teacher";
  String salaryrangeValue = "15k-20k";
  String maritalstatusValue = "Married";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// gender
        ///
        ///
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Gender",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: kTextColor),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height / 15,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: kBorderColor.withOpacity(0.1),
            ),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: genderValue,
            onChanged: (String? newValue) {
              setState(() {
                genderValue = newValue!;
              });
            },
            items: <String>['Male', 'Female', 'Other']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        /// Education
        ///
        ///
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Education",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: kTextColor),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height / 15,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: kBorderColor.withOpacity(0.1),
            ),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: educationValue,
            onChanged: (String? newValue) {
              setState(() {
                educationValue = newValue!;
              });
            },
            items: <String>['BMath', 'BTS', 'BTL', 'BASc']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        /// Occupation
        ///
        ///
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Occupation",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: kTextColor),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height / 15,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: kBorderColor.withOpacity(0.1),
            ),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: occupationValue,
            onChanged: (String? newValue) {
              setState(() {
                occupationValue = newValue!;
              });
            },
            items: <String>['Teacher', 'Technician', 'Labourer', 'Scientist']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        ///Salary range
        ///
        ///

        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Salary range",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: kTextColor),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height / 15,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: kBorderColor.withOpacity(0.1),
            ),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: salaryrangeValue,
            onChanged: (String? newValue) {
              setState(() {
                salaryrangeValue = newValue!;
              });
            },
            items: <String>['15k-20k', '20k-30k', '30k-40k', '40k-50k']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        ///Marital status
        ////
        ///
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Marital status",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: kTextColor),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height / 15,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: kBorderColor.withOpacity(0.1),
            ),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            hint: const Text("Select marital status"),
            value: maritalstatusValue,
            onChanged: (String? newValue) {
              setState(() {
                maritalstatusValue = newValue!;
              });
            },
            items: <String>[
              'Married',
              'Widowed',
              'Separated',
              'Divorced',
              'Single'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
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
            Get.toNamed('/contact-info');
          },
          boxShadow: kBorderColor.withOpacity(0.1),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
