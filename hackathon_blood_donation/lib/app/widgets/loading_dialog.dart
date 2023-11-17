import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loading {
  static void show({String loadingText = 'Loading...'}) {
    Get.dialog(
      Dialog(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text(loadingText),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  //hide dialog
  static void hide() {
    Get.back();
  }
}
//commit 