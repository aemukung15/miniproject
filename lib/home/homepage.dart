import 'dart:math';
import 'package:flutter/material.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_1.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_10.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_11.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_12.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_13.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_14.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_2.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_3.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_4.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_5.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_6.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_7.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_8.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_9.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_1.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_2.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_3.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_4.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_5.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_6.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_7.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_8.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_9.dart';
import 'package:miniproject/boxing_dance/developer.dart';
import 'package:miniproject/boxing_dance/record.dart';

import '../drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('รำมวยโบราณจังหวัดสกลนคร'),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Center(
                child: SelectionArea(
                    child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  "assets/imaghome.png",
                  width: 400,
                  height: 400,
                )),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text('ยินดีต้อนรับทุกท่าน',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text('แอปพลเคชัน ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text('ท่ารำมวยโบราณ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text('จังหวัดสกลนคร',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
          ],
        )))),
      ),
      drawer: MyDrawer(),
    );
  }
}
