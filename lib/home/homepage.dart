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
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DrawerHeader(
                  child: Text(
                    'เมนู',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ListTile(
                  title: const Text("ประวัติรำมวยโบราณ"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => record()),
                    );
                  },
                ),
                ExpansionTile(
                  title: const Text('ท่ารำเดี่ยว'),
                  subtitle: const Text(
                    'จำนวน 12 ท่า',
                  ),
                  children: [
                    ListTile(
                      title: const Text('1. ท่าเสือออกจากเหล่า'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_1()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('2. ท่าย่างสามขุม'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_2()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('3. ท่ากุมภัณฑ์ถอยทัพ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_3()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('4. ท่าลับหอกโมกขศักดิ์'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_4()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('5. ท่าตบผาบปราบมาร'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_5()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('6. ท่าทะยานเหยื่อเสือลากหาง'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_6()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('7. ท่าไก่เลียบเล้า'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_7()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('8. ท่าน้าวคันศร'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_8()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('9. ท่ากินนรเข้าถ้ำ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_9()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('10. ท่าเตี้ยต่ำเสือหมอบ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_10()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('11. ท่าทรพีชนพ่อ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_11()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('12. ท่าล่อแก้วเมขลา'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_12()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('13. ท่าม้ากระทืบโรง'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_13()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('14. ท่าช้างโขลงทะลายป่า'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance1_14()),
                        );
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('ท่ารำหมู่'),
                  subtitle: const Text(
                    'จำนวน 9 ท่า',
                  ),
                  children: [
                    ListTile(
                      title: const Text('1. ท่ากาเต้นก้อนขี้ไถ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_1()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('2. ท่าหวะพราย'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_2()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('3. ท่าย่างสามขุม'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_3()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('4. ท่าน้าวเฮียวไผ่'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_4()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('5. ท่าไล่ลูกแตก-ตบผาบปราบมาร'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_5()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('6. ท่าช้างม้วนงวง'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_6()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('7. ท่าทวงฮัก กวักชู้'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_7()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('8. ท่าแหลวถลา กาตากปีก'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_8()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('9. ท่าเลาะเลียบตูบ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => boxing_dance2_9()),
                        );
                      },
                    ),
                  ],
                ),
                ListTile(
                  title: const Text("คณะผู้พัฒนา"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => developer()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
