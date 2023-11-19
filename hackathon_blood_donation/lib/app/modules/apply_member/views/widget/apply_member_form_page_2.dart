import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/text_field_input.dart';
import '../../controllers/apply_member_controller.dart';

class ApplyMemberFormPage2 extends StatelessWidget {
  const ApplyMemberFormPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final ApplyMemberController controller = Get.put(ApplyMemberController());

    return SingleChildScrollView(
      child: Column(
        children: [
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
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () => controller.validateFormPage2(),
              child: Text("continue"))
        ],
      ),
    );
  }
}
