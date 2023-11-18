import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_blood_donation/app/constants/app_colors.dart';
import 'package:hackathon_blood_donation/app/constants/svg_constants.dart';
import 'package:hackathon_blood_donation/app/constants/text_style_auto_size.dart';

class CardSelectLocationDonate extends StatelessWidget {
  const CardSelectLocationDonate({
    super.key,
    required this.locationName,
    required this.phoneCall,
    required this.locationDes,
    required this.onTap,
  });
  final String locationName;
  final String phoneCall;
  final String locationDes;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
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
                  CircleAvatar(
                      backgroundColor: redLight,
                      child: SvgPicture.asset(SvgConstants.buildingIcon)),
                  const SizedBox(width: 10),
                  Text(locationName),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: redLight,
                      child: SvgPicture.asset(SvgConstants.callPhoneIcon)),
                  const SizedBox(width: 10),
                  Text(phoneCall),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Icons.home_max_outlined,
                    color: Colors.transparent,
                  ),
                  Expanded(
                    child: Text(locationDes),
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
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(SvgConstants.locationIcon),
                          Text(
                            "Location",
                            style: OptionStyleAutoSize(context, color: redDark),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: redDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                            child: Text(
                          "Choose",
                          style:
                              OptionStyleAutoSize(context, color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
