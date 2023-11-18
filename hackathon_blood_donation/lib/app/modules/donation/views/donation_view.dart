import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';
import 'package:hackathon_blood_donation/app/constants/image_constants.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';
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
                Text("Service Center"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.7),
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: const Offset(1, 1),
                    )
                  ]),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(Icons.home_max_outlined),
                        SizedBox(width: 10),
                        Text("National blood Building"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.home_max_outlined),
                        SizedBox(width: 10),
                        Text("021-214-4763"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.home_max_outlined,
                          color: Colors.transparent,
                        ),
                        Expanded(
                          child: Text(
                              "Xiangyuen Village, ChanthaburyDistrict, Vientiane Capital. "),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.local_airport),
                                Text(
                                  "Location",
                                  style: OptionStyleAutoSize(context,
                                      color: redDark),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: redDark,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: Center(
                                child: Text(
                              "Choose",
                              style: OptionStyleAutoSize(context,
                                  color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
