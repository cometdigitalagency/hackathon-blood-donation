import 'package:call_center/call_center.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';
import 'package:hackathon_blood_donation/app/constants/image_constants.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';

import '../controllers/urgent_number_controller.dart';

class UrgentNumberView extends GetView<UrgentNumberController> {
  const UrgentNumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Image.asset(ImagesConstants.logo3, scale: 3),
                        const SizedBox(width: 40),
                        Text(
                          "Urgent Number",
                          style: OptionStyleAutoSize(context,
                              fontSizeFactor: FontAutoSize.default_title_size,
                              color: zink400,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Call Center",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  CardSelectCallCenter(
                    peopleName: "peopleName",
                    phoneCall: "1623",
                    locationDes: "Chanthabury District,Vientiane Capital. ",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
