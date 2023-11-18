import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/modules/donation/views/donation_view.dart';
import 'package:hackathon_blood_donation/app/modules/home/views/home_view.dart';
import 'package:hackathon_blood_donation/app/modules/profile/views/profile_view.dart';

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
        elevation: 0,
        notchMargin: 10,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttomAppBarItem(context,
                        page: 0, label: "home", icons: Icons.home),
                    buttomAppBarItem(context,
                        page: 1,
                        label: "donate",
                        icons: Icons.donut_large_outlined),
                    buttomAppBarItem(context,
                        page: 2, label: "profile", svgPath: ),
                  ],
                ))),
      ),
    );
  }
}
