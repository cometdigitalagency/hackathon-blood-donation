import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';

Padding ListTileButton({
  required Text title,
  required Text suTitle,
  required VoidCallback ontap,
  required String pathSvg,
}) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 1,
                  spreadRadius: 3,
                  offset: Offset(1, 1))
            ]),
        child: Container(
          // margin: EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: ListTile(
            title: title,
            subtitle: suTitle,
            tileColor: Colors.white, // Set the background color here
            contentPadding: const EdgeInsets.all(16.0), // Set padding
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10))),
            leading: SvgPicture.asset(pathSvg),
            trailing: InkResponse(
              onTap: ontap,
              child: const CircleAvatar(
                backgroundColor: redDark,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ));
}
