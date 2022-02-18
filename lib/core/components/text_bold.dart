import 'package:exam/core/constants/constants.dart';
import 'package:flutter/material.dart';

class TextBold {
  static myBoldText({required String text, required double fontSize, Color? color}) => Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color
        ),
      );
}
