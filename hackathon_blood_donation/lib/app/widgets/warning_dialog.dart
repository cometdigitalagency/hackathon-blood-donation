import 'package:flutter/material.dart';
import 'package:get/get.dart';

waringDialog({required String title, required String des}) {
  return Get.dialog(AlertDialog(
      content: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(width: 5),
      ElevatedButton(onPressed: () => Get.back(), child: Text("okay"))
    ],
  )));
}
