import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/text_field_input.dart';
import '../../controllers/apply_member_controller.dart';

class ApplyMemberFormPage3 extends StatelessWidget {
  const ApplyMemberFormPage3({super.key});

  @override
  Widget build(BuildContext context) {
    final ApplyMemberController controller = Get.put(ApplyMemberController());

    return SingleChildScrollView(
      child: Column(
        children: [
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
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () => controller.validateFormPage3(),
              child: Text("continue"))
        ],
      ),
    );
  }
}
