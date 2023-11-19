import 'package:get/get.dart';

import '../controllers/apply_member_controller.dart';

class ApplyMemberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplyMemberController>(
      () => ApplyMemberController(),
    );
  }
}
