import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';

import '../../../constants/image_constants.dart';
import '../../../constants/text_style_auto_size.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                // Image.asset(ImagesConstants.backgroundHome),
                Row(
                  children: [
                    Image.asset(ImagesConstants.logo3, scale: 3),
                    Text(
                      "Donate",
                      style: OptionStyleAutoSize(context,
                          fontSizeFactor: FontAutoSize.default_title_size,
                          color: zink400,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: Center(
                      child: Text(
                    "BU",
                    style: OptionStyleAutoSize(context,
                        fontSizeFactor: FontAutoSize.default_title_size),
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
