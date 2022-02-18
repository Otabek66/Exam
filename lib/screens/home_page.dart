import 'package:exam/core/components/house_container.dart';
import 'package:exam/core/components/input_comp.dart';
import 'package:exam/core/components/sizeconfig.dart';
import 'package:exam/core/components/text_bold.dart';
import 'package:exam/core/constants/constants.dart';
import 'package:exam/data/city_info.dart';
import 'package:exam/data/coutry_info.dart';
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
      body: ListView(
        children: [
          Container(
            height: getHeight(553),
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                    height: getHeight(441),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/house.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Image.asset(
                            'assets/images/houseBottom.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(RadiusConst.extraLargeRadius),
                                ),
                                color: ColorsConst.whiteOpasity,
                              ),
                              height: 50,
                              width: 328,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                  const SizedBox(
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
                          ],
                        ),
                        Row(
                          children: [
                            HouseContainer.container(
                                'Flight date', '13 Jul - 18 Jul'),
                            Container(
                                margin: EdgeInsets.only(top: 15),
                                height: 42,
                                width: 1,
                                color: Colors.grey),
                            HouseContainer.container(
                                'Number of Persons', '1 Room - 2 Person'),
                          ],
                        ),
                        Container(
                          height: getHeight(50),
                          width: getWidth(328),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(RadiusConst.extraLargeRadius),
                            ),
                            color: ColorsConst.eColor,
                          ),
                          child: Center(
                            child: Text(
                              "Today's Promo",
                              style: TextStyle(
                                  color: ColorsConst.white, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(top: 29, left: 30),
            child: TextBold.myBoldText(text: 'Recommended List', fontSize: 19),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemBuilder: (_, __) {
                return Container(
                  height: 188,
                  width: 155,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(RadiusConst.largeRadius),
                      topRight: Radius.circular(RadiusConst.largeRadius),
                    ),
                    image: DecorationImage(
                        image: AssetImage(CityInfo.usersInfo[__].image),
                        fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 132,
                          left: 9,
                          child: TextBold.myBoldText(
                              text: CityInfo.usersInfo[__].countrys,
                              fontSize: 16)),
                      Positioned(
                          top: 155,
                          left: 9,
                          child: Text(
                            CityInfo.usersInfo[__].citys,
                            style: TextStyle(fontSize: 12),
                          ))
                    ],
                  ),
                );
              },
              itemCount: CityInfo.usersInfo.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(top: 38, left: 30),
            child:
                TextBold.myBoldText(text: 'Popular Destination', fontSize: 19),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemBuilder: (_, __) {
                return Container(
                  height: 188,
                  width: 291,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(RadiusConst.largeRadius),
                      topRight: Radius.circular(RadiusConst.largeRadius),
                    ),
                    image: DecorationImage(
                        image: AssetImage(CountrInfo.countryInfo[__].image),
                        fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 11,
                        left: 18,
                        child: TextBold.myBoldText(
                          text: CountrInfo.countryInfo[__].name,
                          fontSize: 22,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: CountrInfo.countryInfo.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
