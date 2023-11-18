import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_colors.dart';
import '../controllers/dashboard_controller.dart';

final DashboardController controller = Get.put(DashboardController());
Widget buttomAppBarItem(BuildContext context,
    {required IconData icons, required page, required label}) {
  return GestureDetector(
    onTap: () => controller.goToTab(page),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icons,
          color: controller.currentPage.value == page ? redMain : zink400,
        ),
        Text(
          label,
          style: TextStyle(
            color: controller.currentPage.value == page ? redMain : zink400,
            fontWeight:
                controller.currentPage.value == page ? FontWeight.bold : null,
          ),
        )
      ],
    ),
  );
}
