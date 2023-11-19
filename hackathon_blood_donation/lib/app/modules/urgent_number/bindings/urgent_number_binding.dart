import 'package:get/get.dart';

import '../controllers/urgent_number_controller.dart';

class UrgentNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UrgentNumberController>(
      () => UrgentNumberController(),
    );
  }
}
