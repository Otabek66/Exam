import 'dart:async';
import 'dart:ui';

import 'package:exam/core/components/sizeconfig.dart';
import 'package:exam/core/constants/constants.dart';
import 'package:exam/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:exam/core/components/sizeconfig.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacementNamed(context, '/');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/splash.png'),
          Positioned(
            top: 109,
            right: 70,
            child: Column(
              children: [
                Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                    color: ColorsConst.greyOpasity,
                    borderRadius:
                        BorderRadius.circular(RadiusConst.mediumRadius),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/splashBuilding.png'),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.only(top: 11),
                  child: Text(
                    'Peshot',
                    style: TextStyle(
                        fontSize: FontsConst.extraLargeFont,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.only(top: 11),
                  height: getHeight(43),
                  width: getWidth(250),
                  child: Column(children: [
                    Text(
                      'Welcome to peshot',
                      style: TextStyle(fontSize: FontsConst.smallFont),
                    ),
                    Text(
                      'Book easy and cheap hotels only on Peshot',
                      style: TextStyle(fontSize: FontsConst.smallFont),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
