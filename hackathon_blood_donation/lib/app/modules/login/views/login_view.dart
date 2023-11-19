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
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      ImagesConstants.backgroundHome,
                      width: double.infinity,
                      height: size.height * .4,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 20,
                      left: size.width * 0.25,
                      child: Column(
                        children: [
                          Image.asset(
                            ImagesConstants.logo3,
                            scale: 2,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            appName,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: zink100,
                            ),
                          ),
                          Image.asset(
                            ImagesConstants.peopleDonation,
                            scale: 1.5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // header
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      const Center(
                        child: Text(
                          "Donate blood, give life.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: zink600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        "Phon Number",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextFieldInput(
                        controller: controller.phoneController,
                        hintText: 'input phone',
                      ),
                      const SizedBox(height: 22),
                      const Text(
                        "password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Form(
                        key: controller.formKey,
                        child: TextFieldInput(
                          controller: controller.passwordController,
                          hintText: 'input password',
                        ),
                      ),
                      const SizedBox(height: 50),
                      Center(
                        child: SizedBox(
                          height: 50,
                          child: InkWell(
                              child: CustomButton(
                            color: redMain,
                            title: 'Login',
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: zink100,
                            ),
                            onTap: () {
                              if (controller.formKey.currentState!.validate()) {
                                debugPrint('data add success');
                                controller.verifyPhoneNumber(context: context);
                              }
                            },
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
