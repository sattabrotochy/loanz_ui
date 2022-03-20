import 'package:get/get.dart';

import '../controllers/persona_info_2_controller.dart';

class PersonaInfo2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonaInfo2Controller>(
      () => PersonaInfo2Controller(),
    );
  }
}
