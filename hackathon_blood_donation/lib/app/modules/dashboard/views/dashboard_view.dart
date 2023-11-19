import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/svg_constants.dart';
import 'package:hackathon_blood_donation/app/modules/donation/views/donation_view.dart';
import 'package:hackathon_blood_donation/app/modules/home/views/home_view.dart';
import 'package:hackathon_blood_donation/app/modules/profile/views/profile_view.dart';
import 'package:hackathon_blood_donation/l10n/locale_keys.g.dart';

import '../controllers/dashboard_controller.dart';
import '../widgets/bottom_appBar_item.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: const [
          HomeView(),
          DonationView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 90,
        elevation: 0,
        notchMargin: 5,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttomAppBarItem(context,
                        page: 0, label: "home", svgPath: SvgConstants.homeIcon),
                    buttomAppBarItem(context,
                        page: 1,
                        label: "donate",
                        svgPath: SvgConstants.bloodBagIcon),
                    buttomAppBarItem(context,
                        page: 2,
                        label: "profile",
                        svgPath: SvgConstants.userProfileIcon),
                  ],
                ))),
      ),
    );
  }
}
