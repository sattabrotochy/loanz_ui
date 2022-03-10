// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:loanz/Constant.dart';
import 'package:loanz/app/modules/home/piChart_Model.dart';
import 'package:loanz/app/modules/home/views/Component/home_view_header.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controllers/home_controller.dart';
import 'Component/popular_list_item.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      body: SafeArea(
          child: Column(
        children: [
          homeViewHeaderWidget(
            press: () {
              Get.toNamed('/profile-screen');
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            height: Get.height / 4,
            decoration: BoxDecoration(
              color: kBackGroundColorWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SfCircularChart(
              legend: Legend(isVisible: true),
              series: <CircularSeries>[
                PieSeries<SalesData, String>(
                  dataSource: controller.salesDataList,
                  animationDuration: 1000,
                  explode: true,
                  animationDelay: 10.0,
                  enableTooltip: true,
                  explodeIndex: 4,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  dataLabelSettings: const DataLabelSettings(
                    isVisible: true,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: double.minPositive,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: Get.height / 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(
                      top: Get.height / 20,
                      left: Get.width / 20,
                      right: Get.width / 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Popular Loan Offer",
                      style: TextStyle(
                          fontSize: Get.height / 40,
                          fontWeight: FontWeight.bold,
                          color: kTextColor)),
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, int index) {
                        return const PopularListItemWidget();
                      }),
                )
              ]),
            ),
          ),
        ],
      )),
    );
  }
}
