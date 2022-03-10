
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import '../../../../../Constant.dart';

class TextFormWidget extends StatelessWidget {


  final hintText;
  final TextInputType textInputType;
  final FormFieldValidator formFieldValidator;
  final Function(dynamic vale) onchange;
  final IconData icon;
  final Callback iconButton;
  final bool obscure;


  const TextFormWidget(
      {Key? key, this.hintText, required this.textInputType, required this.formFieldValidator, required this.onchange, required this.icon, required this.iconButton, required this.obscure,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 15,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: kBorderColor.withOpacity(0.1))),
      child: TextFormField(

        obscureText: obscure,
        onChanged: onchange,
        validator: formFieldValidator,
        keyboardType: textInputType,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            suffixIcon: GestureDetector(
                onTap: iconButton,
                child: Icon(icon, color: kPrimaryColor,)

            )
        ),
      ),
    );
  }
}
