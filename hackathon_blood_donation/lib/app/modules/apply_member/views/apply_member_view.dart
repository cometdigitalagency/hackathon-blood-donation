import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';
import 'package:hackathon_blood_donation/app/constants/image_constants.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';

import '../controllers/apply_member_controller.dart';

class ApplyMemberView extends GetView<ApplyMemberController> {
  const ApplyMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(ImagesConstants.topBackground),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: const CircleAvatar(
                          backgroundColor: zink200,
                          child: Icon(
                            Icons.arrow_back,
                            color: redDark,
                          ),
                        ),
                      ),
                      Text(
                        'Apply for membership',
                        style: OptionStyleAutoSize(context, fontSizeFactor: FontAutoSize.default_title_size, color: zink200),
                      ),
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text("1/3"),
            // TabBarView(children: []),
            Row(
              children: [Text("Name"), Text("Surname")],
            ),
            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     border: Border.all(width: 1),
            //   ),
            //   child: Row(
            //     children: [TextField(), Divider(), TextField()],
            //   ),
            // )
            TextField(),
          ],
        ),
      ),
    );
  }
}
