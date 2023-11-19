// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/warning_dialog.dart';

class ApplyMemberController extends GetxController {
  final RxInt currentPage = 0.obs;
  final PageController pageController = PageController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController urgentNumberController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController bloodTypeController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController provinceController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController villageController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();

  void onClickBack() {
    if (currentPage.value != 0) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 200), curve: Curves.ease);
    } else {
      Get.back();
    }
  }

  void validateFormPage1() {
    if (nameController.text == "") {
      waringDialog(title: '', des: '');
    } else {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: const Duration(milliseconds: 200), curve: Curves.ease);
      }
    }
  }

  void validateFormPage2() {
    if (pageController.hasClients) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 200), curve: Curves.ease);
    }
  }

  void validateFormPage3() {}

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    pageController.addListener(() {
      currentPage.value = pageController.page?.toInt() ?? 0;
      update();
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
