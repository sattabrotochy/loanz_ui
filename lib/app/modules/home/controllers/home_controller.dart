// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:loanz/app/modules/home/piChart_Model.dart';

class HomeController extends GetxController {


  final count = 0.obs;

 late List<SalesData> salesDataList ;

  @override
  void onInit() {
    super.onInit();
    getPiChat();

    salesDataList = getPiChat();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  List<SalesData> getPiChat()  {
    List<SalesData> data = [
      SalesData('Jan', 35),
      SalesData('Feb', 28),
      SalesData('Mar', 34),
      SalesData('Apr', 32),
      SalesData('May', 40)
    ];
    return data;
  }
}
