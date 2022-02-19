import 'package:exam/core/components/sizeconfig.dart';
import 'package:exam/core/components/text_bold.dart';
import 'package:exam/core/constants/constants.dart';
import 'package:exam/data/hotel_info.dart';
import 'package:exam/data/room_info.dart';
import 'package:exam/models/hotel_model.dart';
import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  HotelModel hotel;
  DataPage({Key? key, required this.hotel}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getHeight(120),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage('assets/images/datapage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  top: 50,
                  child: InkWell(
                    child: Image.asset(
                      'assets/images/arrowleft.png',
                      height: 24,
                      width: 24,
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/homePage');
                    },
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 45,
                  child: Image.asset(
                    'assets/images/heart.png',
                    height: 40,
                    width: 40,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: getHeight(100),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 0,
                          left: 30,
                          child: SizedBox(
                            height: 74,
                            width: 148,
                            child: TextBold.myBoldText(
                              text: widget.hotel.name,
                              fontSize: 30,
                            ),
                          )),
                      Positioned(
                          top: 81,
                          left: 30,
                          child: Text(
                            widget.hotel.address,
                            style:
                                TextStyle(fontSize: FontsConst.extraSmallFont),
                          )),
                      Positioned(
                          top: 80,
                          left: 170,
                          child: Icon(
                            Icons.room,
                            color: ColorsConst.eColor,
                            size: 10,
                          )),
                      Positioned(
                        top: 81,
                        left: 183,
                        child: Text(
                          widget.hotel.location,
                          style: TextStyle(fontSize: FontsConst.extraSmallFont),
                        ),
                      ),
                      Positioned(
                        left: 215,
                        top: 40,
                        child: SizedBox(
                            width: 145,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextBold.myBoldText(
                                  text: widget.hotel.cost,
                                  fontSize: 22,
                                ),
                              ],
                            )),
                      ),
                      const Positioned(
                        bottom: 10,
                        right: 30,
                        child: Text(
                          'Per Night',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                _dviderLine(21),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 30),
                  child:
                      TextBold.myBoldText(text: 'Hotel Details', fontSize: 16),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10, left: 30, right: 20),
                    child: const Text(
                      'This luxury and well-known hotel overlooking the Chao Phraya river is a 3-minute walk from the nearest ferry stop.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Read more...',
                      style: TextStyle(fontSize: 12, color: ColorsConst.eColor),
                    )),
                Container(
                  margin: const EdgeInsets.all(20),
                  height: getHeight(156),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.all(
                    //   Radius.circular(20),
                    // ),
                    // image: DecorationImage(image: )
                  ),
                  child: Image.asset(
                    'assets/images/rating.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBold.myBoldText(text: 'Hotel Details', fontSize: 16),
                      Text(
                        'Read more...',
                        style:
                            TextStyle(fontSize: 12, color: ColorsConst.eColor),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  height: 110,
                  child: ListView.builder(
                    itemBuilder: (_, __) {
                      return Card(
                        child: Image.asset(
                          RoomInfo.roomInfo[__],
                          height: 110,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: RoomInfo.roomInfo.length,
                  ),
                ),
                _dviderLine(21),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBold.myBoldText(text: 'Reviews (33)', fontSize: 16),
                      Text(
                        'View all',
                        style:
                            TextStyle(fontSize: 12, color: ColorsConst.eColor),
                      )
                    ],
                  ),
                ),
                _dviderLine(15),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0),
                      child: Image.asset(
                        'assets/images/avatar.png',
                        fit: BoxFit.cover,
                        height: 35,
                        width: 35,
                      ),
                    ),
                    title: TextBold.myBoldText(text: 'Kang Jhon', fontSize: 14),
                    subtitle: Text('3 hour 43 min ago'),
                    trailing: Container(height: 30,width:62,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Text('Rating'),
                        Row(children: [
                          Image(image: AssetImage('assets/images/star.png'),height: 10,width: 10,)
                        ],)
                      ],),
                  ),
                ),
                )],
            ),
          )
        ],
      ),
    );
  }

  Container _dviderLine(double top) {
    return Container(
      margin: EdgeInsets.only(top: top, right: 30, left: 30),
      height: 3,
      color: Colors.grey,
    );
  }
}
