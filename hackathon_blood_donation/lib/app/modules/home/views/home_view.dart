import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/font_auto_size.dart';
import 'package:hackathon_blood_donation/app/constants/image_constants.dart';
import 'package:hackathon_blood_donation/app/constants/svg_constants.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';
import 'package:hackathon_blood_donation/l10n/locale_keys.g.dart';
import '../../../widgets/listTile_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              ImagesConstants.mainLogo,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Blood donation",
                              style: OptionStyleAutoSize(
                                context,
                                fontSizeFactor: FontAutoSize.default_title_size,
                                color: zink200,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(SvgConstants.historyIcon),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Blood",
                              style: OptionStyleAutoSize(
                                context,
                                fontSizeFactor: FontAutoSize.default_des_size,
                                color: zink200,
                              ),
                            ),
                            Text(
                              "type",
                              style: OptionStyleAutoSize(
                                context,
                                fontSizeFactor: FontAutoSize.default_des_size,
                                color: zink200,
                              ),
                            ),
                            SvgPicture.asset(SvgConstants.bloodAPlus),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: 2,
                            height: 90,
                            color: Colors.yellow,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Unit",
                              style: OptionStyleAutoSize(context,
                                  fontSizeFactor: FontAutoSize.default_des_size,
                                  color: zink200),
                            ),
                            Text(
                              "Donated",
                              style: OptionStyleAutoSize(context,
                                  fontSizeFactor: FontAutoSize.default_des_size,
                                  color: zink200),
                            ),
                            Text(
                              "05",
                              style: OptionStyleAutoSize(context,
                                  fontSizeFactor: FontAutoSize.default_des_size,
                                  color: zink200),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListTileButton(
                      title: Text("Next Donation"),
                      suTitle: Text("Wed Jun 20   8:00-8:15 AM"),
                      ontap: () {},
                      pathSvg: SvgConstants.calendaIcon)
                ],
              ),
            ],
          ),
          ListTileButton(
              title: Text("Blood Bank"),
              suTitle: Text("Blood Bank Near You"),
              ontap: () {},
              pathSvg: SvgConstants.bloodBank),
          ListTileButton(
              title: Text("Search Donor"),
              suTitle: Text("Search Donor By Area"),
              ontap: () {},
              pathSvg: SvgConstants.handHolding),
          ListTileButton(
              title: Text("Ambulance"),
              suTitle: Text("Your Nearby Service"),
              ontap: () {},
              pathSvg: SvgConstants.ambulanceIcon),
        ],
      ),
    ));
  }
}
