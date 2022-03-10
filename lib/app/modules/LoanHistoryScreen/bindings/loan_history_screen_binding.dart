import 'package:get/get.dart';

import '../controllers/loan_history_screen_controller.dart';

class LoanHistoryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoanHistoryScreenController>(
      () => LoanHistoryScreenController(),
    );
  }
}
