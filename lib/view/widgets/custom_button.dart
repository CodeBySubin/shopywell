import 'package:flutter/material.dart';
import 'package:shopywell/core/constants.dart';

Widget textButton({required String text, required TextStyle style}) {
  return TextButton(onPressed: () {}, child: Text(text, style: style));
}

Widget elevatedButton({
  required String text,
  TextStyle? style,
  required VoidCallback onPressed,
  Color backgroundColor = AppColor.primaryColor,
  Color textColor = Colors.white,
  double height = 60,
  double width = double.infinity,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      minimumSize: Size(width, height),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: textColor,
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    ),
    child: Text(text, style: style),
  );
}
