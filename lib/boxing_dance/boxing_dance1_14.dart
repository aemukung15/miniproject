import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/Muscle/muscle1_1.dart';

class boxing_dance1_14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('14. ท่าช้างโขลงทะลายป่า'),
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
                  "assets/14.png",
                  width: 300,
                  height: 300,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => muscle1_1())),
                      );
                    },
                    icon: const Icon(Icons.star_rate),
                    label: const Text('กล้ามเนื้อ'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20.0),
                        fixedSize: Size(200, 60),
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text('วิธีปฏิบัติ',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            Text(
              '1. ยืนแยกขาให้ระยะห่างเท่ากับความกว้างของหัวไหล่ ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              ' 2. เหยียดแขนทั้งสองข้างไปข้างหน้าขนานกับพื้น ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '3. ย่อหัวเข่าลงพร้อมกับตวัดมือลงให้อยู่ข้างหัวเข่า',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '4. ยืดตัวขึ้นพร้อมกับตวัดมือและแขนไปอยู่ด้านหลังเหยียดตึง',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '5. ให้ปฏิบัติเหมือนจังหวะที่ 3',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '6. ให้ปฏิบัติเหมือนจังหวะที่ 2',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ],
        )))),
      ),
    );
  }
}
