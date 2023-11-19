import 'package:flutter/material.dart';

TextStyle OptionStyleAutoSize(
  BuildContext context, {
  double? fontSizeFactor = 0.015,
  Color? color,
  FontWeight? fontWeight,
  TextDecoration? textDecoration,
  TextOverflow? overflow,
}) {
  final double screenWidth = MediaQuery.of(context).size.width;
  final double screenHeight = MediaQuery.of(context).size.height;
  final double fontSize = (screenWidth + screenHeight) * fontSizeFactor!;

  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'NotoSansLao',
    color: color,
    decoration: textDecoration,
    overflow: overflow,
  );
}
