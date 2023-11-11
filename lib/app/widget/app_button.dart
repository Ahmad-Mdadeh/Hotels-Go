import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color? color;
  final BoxBorder? boxBorder;
  final double width;
  final Widget? widget;
  final double height;
  final double borderRadius;
  final Function() function;

  const AppButton({
    super.key,
    required this.borderRadius,
    this.color,
    required this.width,
    required this.height,
    required this.function,
    this.boxBorder,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: boxBorder,
          color: color,
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        child: widget,
      ),
    );
  }
}
