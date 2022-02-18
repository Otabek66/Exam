import 'package:flutter/material.dart';

class HouseContainer {
  static container(String text,String texttwo) {
    return Container(
      margin: EdgeInsets.only(left: 11, top: 19),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text('$text\n',style: TextStyle(fontSize: 14),),
          Text(
            texttwo,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
          )
        ],
      ),
    );
  }
}
