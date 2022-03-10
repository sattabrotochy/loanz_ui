import 'package:flutter/material.dart';

import '../../../../../Constant.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  TextEditingController numController1 = TextEditingController();
  TextEditingController numController2 = TextEditingController();
  TextEditingController numController3 = TextEditingController();
  TextEditingController numController4 = TextEditingController();
  TextEditingController numController5 = TextEditingController();

  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  late FocusNode pin5FocusNode;
  bool isCheckLoading = false;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  late String num1;
  late String num2;
  late String num3;
  late String num4;
  late String num5;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Form(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: kBackGroundColorWhite,
                    width: (50),
                    child: TextFormField(
                      controller: numController1,
                      onSaved: (data) => num1 = data!,
                      autofocus: true,
                      obscureText: false,
                      style: const TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration,
                      onChanged: (value) {
                        num1 = value;
                        nextField(value, pin2FocusNode);
                      },
                    ),
                  ),
                  Container(
                    color: kBackGroundColorWhite,
                    width: (50),
                    child: TextFormField(
                        controller: numController2,
                        onSaved: (data) => num2 = data!,
                        focusNode: pin2FocusNode,
                        obscureText: false,
                        style: const TextStyle(fontSize: 20),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          num2 = value;

                          nextField(value, pin3FocusNode);
                        }),
                  ),
                  Container(
                    color: kBackGroundColorWhite,
                    width: (50),
                    child: TextFormField(
                        controller: numController3,
                        onSaved: (data) => num3 = data!,
                        focusNode: pin3FocusNode,
                        obscureText: false,
                        style: const TextStyle(fontSize: 20),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          num3 = value;
                          nextField(value, pin4FocusNode);
                        }),
                  ),
                  Container(
                    color: kBackGroundColorWhite,
                    width: (50),
                    child: TextFormField(
                        controller: numController4,
                        onSaved: (data) => num4 = data!,
                        focusNode: pin4FocusNode,
                        obscureText: false,
                        style: const TextStyle(fontSize: 20),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          num4 = value;
                          nextField(value, pin5FocusNode);
                        }),
                  ),
                  Container(
                    color: kBackGroundColorWhite,
                    width: (50),
                    child: TextFormField(
                      controller: numController5,
                      onSaved: (data) => num5 = data!,
                      focusNode: pin5FocusNode,
                      obscureText: false,
                      style: const TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration,
                      onChanged: (value) {
                        num5 = value;
                        if (value.length == 1) {
                          pin5FocusNode.unfocus();
                          // Then you need to check is the code is correct or not
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
