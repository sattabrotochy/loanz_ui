import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../Constant.dart';

class PopularListItemWidget extends StatelessWidget {
  const PopularListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 6.5,
      width: double.maxFinite,
      margin:
          EdgeInsets.only(left: Get.width / 20, right: Get.width / 20, top: 10),
      decoration: BoxDecoration(
        color: kBackGroundColorWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(children: [
              Expanded(
                flex: 1,
                child: Row(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 10, top: 2),
                    height: Get.height / 18,
                    width: Get.width / 9,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCDFCF0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/icon/home.svg",
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 7, top: 15),
                            child: Text(
                              "Home Loan",
                              style: TextStyle(
                                  fontSize: Get.width / 28,
                                  fontWeight: FontWeight.bold,
                                  color: kTextColor),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 7, top: 4),
                            child: Text(
                              "Lowest interest",
                              style: TextStyle(
                                  fontSize: Get.width / 30,
                                  fontWeight: FontWeight.normal,
                                  color: kTextColor),
                            ),
                          ),
                        ],
                      )),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed('/apply-loan');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: Get.height / 21,
                      margin: const EdgeInsets.only(right: 10),
                      width: Get.width / 4,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Text(
                        "Apply Loan",
                        style: TextStyle(
                            fontSize: Get.width / 29,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ]),
              )
            ]),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("0.5%",
                            style: TextStyle(
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.bold,
                                color: kTextColor)),
                        Text("Interest",
                            style: TextStyle(
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[400])),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("2 years",
                            style: TextStyle(
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.bold,
                                color: kTextColor)),
                        Text("Duration",
                            style: TextStyle(
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[400])),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("\$ 25,000",
                            style: TextStyle(
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.bold,
                                color: kTextColor)),
                        Text("Maximum Amount",
                            style: TextStyle(
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[400])),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
