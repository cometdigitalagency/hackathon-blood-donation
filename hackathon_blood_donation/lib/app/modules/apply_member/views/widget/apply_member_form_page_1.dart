import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/modules/apply_member/controllers/apply_member_controller.dart';

import '../../../../widgets/text_field_input.dart';

class ApplyMemberFormPage1 extends StatelessWidget {
  const ApplyMemberFormPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final ApplyMemberController controller = Get.put(ApplyMemberController());
    return SingleChildScrollView(
      child: Column(
        children: [
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
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () => controller.validateFormPage1(),
              child: Text("continue"))
        ],
      ),
    );
  }
}
