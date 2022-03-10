// ignore_for_file: camel_case_types


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:loanz/Constant.dart';

class homeViewHeaderWidget extends StatelessWidget {
  final Callback press;

  const homeViewHeaderWidget({
    Key? key, required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hello unsplash',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: kTextColorWhite),
          ),
          InkWell(
            onTap: press,
            child: Container(
              height: Get.height / 17,
              width: Get.width / 8.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                      ),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
