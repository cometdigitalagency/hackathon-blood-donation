import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';
import 'package:hackathon_blood_donation/app/constants/image_constants.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';
import 'package:hackathon_blood_donation/app/widgets/card_select_location_donate.dart';
import 'package:hackathon_blood_donation/app/widgets/custom_button.dart';

import '../controllers/donation_controller.dart';

class DonationView extends GetView<DonationController> {
  const DonationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    // Image.asset(ImagesConstants.backgroundHome),
                    Row(
                      children: [
                        Image.asset(ImagesConstants.logo3, scale: 3),
                        Text(
                          "Donate",
                          style: OptionStyleAutoSize(context,
                              fontSizeFactor: FontAutoSize.default_title_size,
                              color: zink400,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Service Center",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            CardSelectLocationDonate(
              locationName: 'National blood Building',
              phoneCall: '021-214-4763',
              locationDes:
                  'Xiangyuen Village, ChanthaburyDistrict, Vientiane Capital. ',
              onTap: () => showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    width: double.infinity,
                    height: 500,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          const SizedBox(height: 38),
                          Text(
                            "Make a appointment",
                            style: OptionStyleAutoSize(
                              context,
                              fontSizeFactor: FontAutoSize.default_title_size,
                              fontWeight: FontWeight.bold,
                              color: zink700,
                            ),
                          ),
                          Text(
                            "Please choose a day and time that suits you.",
                            style: OptionStyleAutoSize(context,
                                color: zink400,
                                fontSizeFactor: FontAutoSize.default_des_size),
                          ),
                          const SizedBox(height: 26),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Donation Day",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 100,
                                child: DatePicker(
                                  DateTime.now(),
                                  initialSelectedDate: DateTime.now(),
                                  selectionColor: redDark,
                                  selectedTextColor: Colors.white,
                                  onDateChange: (date) {
                                    // New date selected
                                    // setState(() {
                                    //   _selectedValue = date;
                                    // });
                                  },
                                ),
                              ),
                              const SizedBox(height: 28),
                              const Text("Donation Time"),
                              const TextField(
                                decoration: InputDecoration(
                                  hintText: "Morning/evening",
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 32),
                          CustomButton(
                              color: redDark,
                              title: "Continue",
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: zink100,
                              ),
                              onTap: () {})
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
