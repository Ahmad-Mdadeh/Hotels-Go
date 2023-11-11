import 'package:flutter/material.dart';


class AppElevatedButton extends StatelessWidget {
  final Color? color;
  final BorderSide? borderSide;
  final double width;
  final Widget? widget;
  final double? elevation;
  final double height;
  final double borderRadius;
  final Function() function;

  const AppElevatedButton({
    super.key,
    required this.borderRadius,
    this.color,
    required this.width,
    required this.height,
    required this.function,
    this.borderSide,
    this.elevation,
 this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          side: borderSide,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
        child: widget,
      ),
    );
  }
}
