import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final double? width;
  final TextStyle? textStyle;
  final String title;
  final Function() onTap;
  const CustomButton({
    super.key,
    required this.color,
    this.width,
    this.textStyle,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
