import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';

waringDialog1({required String title, required String des}) {
  return Get.dialog(AlertDialog(
      content: SizedBox(
    height: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: redDark, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          des,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
            onPressed: () => Get.back(),
            child: const Text(
              "okay",
            )),
      ],
    ),
  )));
}
