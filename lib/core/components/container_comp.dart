import 'package:exam/core/components/sizeconfig.dart';
import 'package:exam/core/constants/constants.dart';
import 'package:flutter/material.dart';

class MyContainer {
  static container(Color color, String image, String text) => Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, blurRadius: 1, spreadRadius: 3)
            ],
            color: color,
            borderRadius: BorderRadius.all(
                Radius.circular(RadiusConst.extraLargeRadius))),
        height: 50,
        width: 167,
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Image.asset(
              image,
              height: 32,
            ),
            const SizedBox(
              width: 23,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}
