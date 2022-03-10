import 'package:get/get.dart';

import '../controllers/apply_loan_controller.dart';
import '../views/Component/range_slider_Widget.dart';
import '../views/Component/time_duration_widget.dart';
import '../views/apply_loan_submit.dart';

class ApplyLoanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplyLoanController>(
      () => ApplyLoanController(),
    );
    Get.lazyPut<ReangeSliderWidget>(
      () => const ReangeSliderWidget(),
    );
    Get.lazyPut<TimeDurationWidegt>(() => 
    const TimeDurationWidegt());
    
    Get.lazyPut<ApplyLoanSubmit>(() => 
     const ApplyLoanSubmit());
    
   
  }
}
