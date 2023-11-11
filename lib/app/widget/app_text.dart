import 'package:flutter/material.dart';

class AppTextWidget extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final Color? backgroundColor;
  final FontWeight fontWeight;
  final double fontSize;
  final int? maxLines;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final double? height;

  const AppTextWidget({
    Key? key,
    required this.text,
    this.color,
    required this.fontWeight,
    required this.fontSize,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
    this.textOverflow,
    this.height,
    this.backgroundColor,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        backgroundColor: backgroundColor,
        height: height,
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        overflow: textOverflow,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
    );
  }
}
