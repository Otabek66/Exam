import 'package:flutter/material.dart';

class MyMessanger{
  static showMyMessenger(String text, BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(text),
          behavior:  SnackBarBehavior.floating,
        ),
      );
  }
}