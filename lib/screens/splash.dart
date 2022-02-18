import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

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
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/splash.png'),
          Container(
            height: 95,
            width: 95,
            margin: EdgeInsets.only(top: 109,left: 159),
            child: Center(
              child: Image.asset('assets/images/splashBuilding.png'),
            ),
          )
        ],
      ),
    );
  }
}
