import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/image_constants.dart';

import 'package:hackathon_blood_donation/app/constants/text_constants.dart';
import 'package:hackathon_blood_donation/app/modules/login/views/otp_view.dart';
import 'package:hackathon_blood_donation/app/widgets/custom_button.dart';
import 'package:hackathon_blood_donation/app/widgets/text_field_input.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(ImagesConstants.logo),
                      radius: 80,
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      appName,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'ລົງທະບຽນ ຫຼື ລົງຊື່ເຂົ້າໃຊ້ດ້ວຍເບີໂທລະສັບ',
                      style: TextStyle(
                        fontFamily: 'NotoSansLao',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 22),
                    TextFieldInput(
                      controller: controller.phoneController,
                      hintText: 'input phone',
                    ),
                    const SizedBox(height: 22),
                    Form(
                      key: controller.formKey,
                      child: TextFieldInput(
                        controller: controller.passwordController,
                        hintText: 'input password',
                      ),
                    ),
                    const SizedBox(height: 70),
                    SizedBox(
                      height: 50,
                      child: InkWell(
                          child: CustomButton(
                        color: redMain,
                        title: 'confirm',
                        onTap: () {
                          if (controller.formKey.currentState!.validate()) {
                            debugPrint('data add success');
                            controller.verifyPhoneNumber(context: context);
                          }
                        },
                      )),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
