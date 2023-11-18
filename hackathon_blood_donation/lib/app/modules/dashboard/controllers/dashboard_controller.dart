import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  late PageController pageController;
  RxInt currentPage = 0.obs;
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }
}
