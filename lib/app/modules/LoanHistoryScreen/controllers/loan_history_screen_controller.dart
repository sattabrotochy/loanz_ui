import 'package:get/get.dart';

import '../loan_histroy_model.dart';

class LoanHistoryScreenController extends GetxController {
  final count = 0.obs;

  List<LoanHistory> loanHistoryDataList = <LoanHistory>[];
  @override
  void onInit() {
    super.onInit();
    loanHistoryDataList = getLoanHistory();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  List<LoanHistory> getLoanHistory() {
    List<LoanHistory> data = [
      LoanHistory("unpaid", 80),
      LoanHistory("paid", 35),
    ];
    return data;
  }
}
