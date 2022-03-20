import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskBarWidget extends StatelessWidget {
  final Color activeColor;
  final Color inactivieColor;
  const TaskBarWidget(
      {Key? key, required this.activeColor, required this.inactivieColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: activeColor,
            borderRadius: BorderRadius.circular(Get.width / 30),
          ),
          child: Text(
            "1",
            style: GoogleFonts.inter(color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          height: Get.height / 220,
          width: Get.width / 4.5,
          decoration: BoxDecoration(
            color: inactivieColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: inactivieColor,
            borderRadius: BorderRadius.circular(Get.width / 30),
          ),
          child: Text(
            "2",
            style: GoogleFonts.inter(color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          height: Get.height / 220,
          width: Get.width / 4.5,
          decoration: BoxDecoration(
            color: inactivieColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: inactivieColor,
            borderRadius: BorderRadius.circular(Get.width / 30),
          ),
          child: Text(
            "3",
            style: GoogleFonts.inter(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
