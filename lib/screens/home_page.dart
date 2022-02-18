import 'package:exam/core/components/input_comp.dart';
import 'package:exam/core/components/sizeconfig.dart';
import 'package:exam/core/constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getHeight(553),
            width: double.infinity,
            color: Colors.yellow,
            child: Stack(
              children: [
                Container(
                  height: getHeight(441),
                  color: Colors.amber,
                  child: Image.asset(
                    'assets/images/house.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 260,
                  left: 30,
                  child: Text(
                    'Where are you\ngoing next?',
                    style: TextStyle(
                      color: ColorsConst.white,
                      fontSize: FontsConst.smallLargeFont,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 343,
                  child: Container(
                    height: getHeight(210),
                    width: getWidth(354),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(RadiusConst.extraLargeRadius)),
                        color: ColorsConst.whiteOpasity),
                    child: Column(
                      children: [
                        Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            RadiusConst.extraLargeRadius)),
                                    color: ColorsConst.whiteOpasity),
                                height: 50,
                                width: 328,
                                child: Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Icon(
                                        Icons.search,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Search',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: FontsConst.mediumFont,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
