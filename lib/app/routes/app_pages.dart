import 'package:get/get.dart';

import '../modules/LoanHistoryScreen/bindings/loan_history_screen_binding.dart';
import '../modules/LoanHistoryScreen/views/loan_history_screen_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/SuccessfullScreen/bindings/successfull_screen_binding.dart';
import '../modules/SuccessfullScreen/views/successfull_screen_view.dart';
import '../modules/applyLoan/bindings/apply_loan_binding.dart';
import '../modules/applyLoan/views/apply_loan_submit.dart';
import '../modules/applyLoan/views/apply_loan_view.dart';
import '../modules/contact_info/bindings/contact_info_binding.dart';
import '../modules/contact_info/views/contact_info_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/otpVerifi/bindings/otp_verifi_binding.dart';
import '../modules/otpVerifi/views/otp_verifi_view.dart';
import '../modules/persona_info_2/bindings/persona_info_2_binding.dart';
import '../modules/persona_info_2/views/persona_info_2_view.dart';
import '../modules/personal_info/bindings/personal_info_binding.dart';
import '../modules/personal_info/views/personal_info_view.dart';
import '../modules/profileScreen/bindings/profile_screen_binding.dart';
import '../modules/profileScreen/views/profile_screen_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFI,
      page: () => OtpVerifiView(),
      binding: OtpVerifiBinding(),
    ),
    GetPage(
      name: _Paths.APPLY_LOAN,
      page: () => const ApplyLoanView(),
      binding: ApplyLoanBinding(),
    ),
    GetPage(
      name: _Paths.APPLY_LOAN_SUBMIT,
      page: () => const ApplyLoanSubmit(),
      binding: ApplyLoanBinding(),
    ),
    GetPage(
      name: _Paths.SUCCESSFULL_SCREEN,
      page: () => const SuccessfullScreenView(),
      binding: SuccessfullScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => const ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOAN_HISTORY_SCREEN,
      page: () => const LoanHistoryScreenView(),
      binding: LoanHistoryScreenBinding(),
    ),
    GetPage(
      name: _Paths.PERSONAL_INFO,
      page: () => PersonalInfoView(),
      binding: PersonalInfoBinding(),
    ),
    GetPage(
      name: _Paths.PERSONA_INFO_2,
      page: () => PersonaInfo2View(),
      binding: PersonaInfo2Binding(),
    ),
    GetPage(
      name: _Paths.CONTACT_INFO,
      page: () => ContactInfoView(),
      binding: ContactInfoBinding(),
    ),
  ];
}
