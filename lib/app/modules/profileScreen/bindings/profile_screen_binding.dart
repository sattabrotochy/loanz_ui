import 'package:get/get.dart';

import '../controllers/profile_screen_controller.dart';

class ProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileScreenController>(
      () => ProfileScreenController(),
    );
  }
}
