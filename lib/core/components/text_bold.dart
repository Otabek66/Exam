import 'package:exam/core/constants/constants.dart';
import 'package:flutter/material.dart';

class TextBold {
  static myBoldText({required String text}) => Text(
        text,
        style: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold),
      );
}
