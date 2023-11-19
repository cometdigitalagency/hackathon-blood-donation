// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/modules/dashboard/views/dashboard_view.dart';
import 'package:hackathon_blood_donation/app/widgets/warning_dailog.dart';

import '../../../widgets/warning_dialog_1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ApplyMemberController extends GetxController {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
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
    if (nameController.text == "" &&
        surnameController.text == "" &&
        dateOfBirthController.text == "" &&
        phoneNumberController.text == "" &&
        urgentNumberController.text == "") {
      waringDialog1(
          title: 'Data is null', des: 'Please enter your information');
    } else {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: const Duration(milliseconds: 200), curve: Curves.ease);
      }
    }
  }

  void validateFormPage2() {
    if (genderController.text == "" &&
        bloodTypeController.text == "" &&
        weightController.text == "" &&
        heightController.text == "") {
      waringDialog1(
          title: 'Data is null', des: 'Please enter your information');
    } else {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: const Duration(milliseconds: 200), curve: Curves.ease);
      }
    }
  }

  void validateFormPage3() {
    if (genderController.text == "" &&
        provinceController.text == "" &&
        villageController.text == "" &&
        occupationController.text == "") {
      waringDialog1(
          title: 'Data is null', des: 'Please enter your information');
    } else {
      if (pageController.hasClients) {
        addUser();
      }
    }
  }

  Future<void> addUser() {
    // Retrieve data from controllers
    String name = nameController.text;
    String surname = surnameController.text;
    String dateOfBirth = dateOfBirthController.text;
    String phoneNumber = phoneNumberController.text;
    String password = passwordController.text;
    String urgentNumber = urgentNumberController.text;
    String gender = genderController.text;
    String bloodType = bloodTypeController.text;
    String weight = weightController.text;
    String height = heightController.text;
    String province = provinceController.text;
    String district = districtController.text;
    String village = villageController.text;
    String occupation = occupationController.text;

    // Example data to add to Firestore
    Map<String, dynamic> userData = {
      'name': name,
      'surname': surname,
      'dateOfBirth': dateOfBirth,
      'phoneNumber': phoneNumber,
      'password': password,
      'urgentNumber': urgentNumber,
      'gender': gender,
      'bloodType': bloodType,
      'weight': weight,
      'height': height,
      'province': province,
      'district': district,
      'village': village,
      'occupation': occupation,
    };

    // Add the data to Firestore
    return users.add(userData).then((value) {
      waringDialog1(title: "Update data Success", des: "Add user information");
      Get.to(const DashboardView());
    }).catchError((error) => print("Failed to add user: $error"));
  }

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
