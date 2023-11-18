import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';
import 'package:hackathon_blood_donation/app/widgets/text_field_input.dart';

import '../controllers/apply_member_controller.dart';

class ApplyMemberView extends GetView<ApplyMemberController> {
  const ApplyMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ApplyMemberController controller = ApplyMemberController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    // Image.asset(ImagesConstants.topBackground),
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
                const Text("1/3"),
                const Text("Name"),
                TextFieldInput(
                  controller: controller.nameController,
                  hintText: 'name',
                ),
                const Text("Surname"),
                TextFieldInput(
                  controller: controller.surnameController,
                  hintText: 'Surname',
                ),
                const Text("Date of Birth"),
                TextFieldInput(
                  controller: controller.dateOfBirthController,
                  hintText: 'Date of Birth',
                ),
                const Text("PhoneNumber"),
                TextFieldInput(
                  controller: controller.phoneNumberController,
                  hintText: 'PhoneNumber',
                ),
                const Text("Urgent number"),
                TextFieldInput(
                  controller: controller.urgentNumberController,
                  hintText: 'Urgent number',
                ),
                const Text("Gender"),
                TextFieldInput(
                  controller: controller.genderController,
                  hintText: 'Gender',
                ),
                const Text("Blood Type"),
                TextFieldInput(
                  controller: controller.bloodTypeController,
                  hintText: 'Blood Type',
                ),
                const Text("Weight"),
                TextFieldInput(
                  controller: controller.weightController,
                  hintText: 'Weight',
                ),
                const Text("Height"),
                TextFieldInput(
                  controller: controller.heightController,
                  hintText: 'Height',
                ),
                const Text("Provinces"),
                TextFieldInput(
                  controller: controller.provinceController,
                  hintText: 'Provinces',
                ),
                const Text("District"),
                TextFieldInput(
                  controller: controller.districtController,
                  hintText: 'District',
                ),
                const Text("Village"),
                TextFieldInput(
                  controller: controller.villageController,
                  hintText: 'Village',
                ),
                const Text("Occupation"),
                TextFieldInput(
                  controller: controller.occupationController,
                  hintText: 'Occupation',
                ),
                ElevatedButton(
                  onPressed: () {
                    String enter = controller.bloodTypeController.text;
                    String ontap = controller.dateOfBirthController.text;
                    String onpress = controller.districtController.text;
                    print("enter text :$enter");
                    print("enter text :$ontap");
                    print("enter text :$onpress");
                  },
                  child: const Text("print show in terminal "),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
