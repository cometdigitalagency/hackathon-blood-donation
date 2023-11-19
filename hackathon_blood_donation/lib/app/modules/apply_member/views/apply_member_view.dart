import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';
import 'package:hackathon_blood_donation/app/modules/apply_member/views/widget/apply_member_form_page_1.dart';
import 'package:hackathon_blood_donation/app/widgets/text_field_input.dart';

import '../controllers/apply_member_controller.dart';
import 'widget/apply_member_form_page_2.dart';
import 'widget/apply_member_form_page_3.dart';

class ApplyMemberView extends GetView<ApplyMemberController> {
  const ApplyMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    // Image.asset(ImagesConstants.topBackground),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => controller.onClickBack(),
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
                            style: OptionStyleAutoSize(context,
                                fontSizeFactor: FontAutoSize.default_title_size,
                                color: zink200),
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
              ),
              LinearProgressIndicator(
                value: (controller.currentPage.value + 1) / 3,
              ),
              Center(child: Text("${controller.currentPage.value + 1}/3")),
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ApplyMemberFormPage1(),
                    ApplyMemberFormPage2(),
                    ApplyMemberFormPage3(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
