library call_center;

import 'package:call_center/constants/app_colors.dart';
import 'package:call_center/constants/svg_constants.dart';
// import 'package:call_center/constants/svg_constants.dart';
import 'package:call_center/constants/text_style_auto_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CardSelectCallCenter extends StatelessWidget {
  const CardSelectCallCenter({
    super.key,
    required this.peopleName,
    required this.phoneCall,
    required this.locationDes,
    required this.onTap,
  });
  final String peopleName;
  final String phoneCall;
  final String locationDes;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: redLight, child: SvgPicture.asset(SvgConstants.peopleIcon)),
                        const SizedBox(width: 10),
                        Text(peopleName),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: redLight, child: SvgPicture.asset(SvgConstants.callPhoneIcon)),
                        const SizedBox(width: 10),
                        Text(phoneCall),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: redLight, child: SvgPicture.asset(SvgConstants.locationIcon)),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            locationDes,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        // final phone = Uri.parse("tel:$phoneCall");
                        await launch("tel:$phoneCall");
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: redDark,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Center(
                          child: Text(
                            "call",
                            style: OptionStyleAutoSize(context, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
