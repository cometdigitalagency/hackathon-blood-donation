// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/image_constants.dart';
import 'package:hackathon_blood_donation/app/constants/text_constants.dart';
import 'package:hackathon_blood_donation/app/modules/login/controllers/login_controller.dart';
import 'package:hackathon_blood_donation/app/widgets/custom_button.dart';

import 'package:pinput/pinput.dart';

class OtpPage extends StatelessWidget {
  final Function(String otp) onPress;
  OtpPage({
    super.key,
    required this.onPress,
  });
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: redMain),
      ),
    );

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
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
                        ImagesConstants.enterOtpPeople,
                        scale: 1.5,
                      ),

                      //hearder
                      const Column(
                        children: [
                          Text(
                            "OTP Verification",
                            style: TextStyle(
                              color: zink700,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "We have sent your OTP on your register mobile number",
                            style: TextStyle(
                              color: zink300,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

            // hearder
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Pinput(
                        length: 6,
                        controller: controller.otpController,
                        focusNode: controller.focusNode,
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsRetrieverApi,
                        listenForMultipleSmsOnAndroid: true,
                        defaultPinTheme: defaultPinTheme,
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        validator: (value) {
                          // return value == '222222' ? null : 'Pin is incorrect';
                          if (value!.isEmpty) {
                            return 'Please enter the OTP';
                          } else if (value.length != 6) {
                            return 'Please enter 6 digit OTP';
                          }
                          return null;
                        },
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        onCompleted: (pin) {
                          debugPrint('onCompleted: $pin');
                        },
                        onChanged: (value) {
                          debugPrint('onChanged: $value');
                        },
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                              color: redMain,
                            ),
                          ],
                        ),
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: redMain),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            color: redMain,
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(color: redMain),
                          ),
                        ),
                        errorPinTheme: defaultPinTheme.copyBorderWith(
                          border: Border.all(color: redMain),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't receive the OTP? ",
                            style: TextStyle(fontFamily: 'NotoSansLao'),
                          ),
                          TextButton(
                            // onPressed: () => controller.verifyPhoneNumber(context: context),
                            onPressed: () {},
                            child: const Text(
                              'Resend',
                              style: TextStyle(
                                color: redMain,
                                fontFamily: 'NotoSansLao',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Form(
                        key: controller.fKey,
                        child: CustomButton(
                          color: redDark,
                          title: 'submit',
                          onTap: () {
                            controller.fKey.currentState!.validate();
                            onPress(controller.otpController.text);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//commit 
