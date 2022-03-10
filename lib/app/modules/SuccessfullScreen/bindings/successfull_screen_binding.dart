import 'package:get/get.dart';

import '../controllers/successfull_screen_controller.dart';

class SuccessfullScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessfullScreenController>(
      () => SuccessfullScreenController(),
    );
  }
}
