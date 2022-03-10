// ignore_for_file: file_names

import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFFFA6E4F);
const Color kPrimaryColor2 = Color(0xFF34006A);
const Color kBorderColor = Color(0xFF34006A);
const Color kTextColorWhite = Color(0xFFFFFFFF);
const Color kBackGroundColorWhite = Color(0xFFFFFFFF);
const Color kGrayColor = Color(0xFFE7E7E7);
const Color kTextColor = Color(0xFF4A4A4A);
const Color kTextColor2 = Color(0xFFB7B7B7);
const Color kprofileButtonBackGrroundColor = Color(0xFF2B0157);




final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular((6)),
    borderSide: BorderSide(color: kBorderColor.withOpacity(0.1)),
  );
}
