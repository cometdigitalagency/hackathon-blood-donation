import 'package:flutter/material.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/modules/login/controllers/login_controller.dart';
import 'package:pinput/pinput.dart';

//TODO: remove this widget
class PinputWidget extends StatelessWidget {
  const PinputWidget({
    super.key,
    required this.controller,
    required this.defaultPinTheme,
  });

  final LoginController controller;
  final PinTheme defaultPinTheme;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      controller: controller.otpController,
      focusNode: controller.focusNode,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
      listenForMultipleSmsOnAndroid: true,
      defaultPinTheme: defaultPinTheme,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      validator: (value) {
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
            color: redDark,
          ),
        ],
      ),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: redDark),
        ),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          color: redDark,
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: redDark),
        ),
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: Colors.redAccent),
      ),
    );
  }
}

//commit 
