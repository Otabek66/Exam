import 'package:exam/data/hotel_info.dart';
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
      body: SizedBox(),
    );
  }
}
