import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/modules/dashboard/views/dashboard_view.dart';
import 'package:hackathon_blood_donation/app/modules/home/views/home_view.dart';
import 'package:hackathon_blood_donation/app/modules/login/views/otp_view.dart';
import 'package:hackathon_blood_donation/app/widgets/loading_dialog.dart';
import 'package:pinput/pinput.dart';

class LoginController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final fKey = GlobalKey<FormState>();

  final focusNode = FocusNode();
  final FirebaseAuth auth = FirebaseAuth.instance;

  String verificationId = '';

  Future<void> verifyPhoneNumber({required BuildContext context}) async {
    // Send the verification code to the user.
    Loading.show();

    await auth.verifyPhoneNumber(
      phoneNumber: "+856${phoneController.text}",
      verificationCompleted: (PhoneAuthCredential credential) async {
        Loading.hide();

        otpController.setText(credential.smsCode!);
        await auth.signInWithCredential(credential);

        print('Verification code sent successfully.');
      },
      verificationFailed: (FirebaseAuthException e) {
        Loading.hide();
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        Loading.hide();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("successfully sent OTP verification"),
            duration: Duration(seconds: 3),
            backgroundColor: redLight,
          ),
        );
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => OtpPage(
              onPress: (String otp) async {
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: verificationId,
                    smsCode: otp,
                  );
                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);

                  print("Successfully registered in with Phone: $credential");

                  Get.off(const DashboardView());
                } catch (e) {
                  if (e is FirebaseAuthException &&
                      e.code == 'invalid-verification-code') {
                    // Show error if OTP does not match
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("OTP does not match"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } else {
                    print(e.toString());
                  }
                }
              },
            ),
          ),
        );
      },
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        print('Code auto retrieval timer has expired.');
        this.verificationId = verificationId;
      },
    );
  }
}
