import 'package:get/get.dart';

import '../controllers/otp_verifi_controller.dart';

class OtpVerifiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpVerifiController>(
      () => OtpVerifiController(),
    );
  }
}
