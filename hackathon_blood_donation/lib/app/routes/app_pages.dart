import 'package:get/get.dart';

import '../modules/apply_member/bindings/apply_member_binding.dart';
import '../modules/apply_member/views/apply_member_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/donation/bindings/donation_binding.dart';
import '../modules/donation/views/donation_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.APPLY_MEMBER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.DONATION,
      page: () => const DonationView(),
      binding: DonationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.APPLY_MEMBER,
      page: () => const ApplyMemberView(),
      binding: ApplyMemberBinding(),
    ),
  ];
}
