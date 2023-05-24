import 'package:flutter/material.dart';
import 'package:miniproject/Muscle/muscle1_2.dart';

class boxing_dance1_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2. ท่าย่างสามขุม'),
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
                  "assets/2.png",
                  width: 400,
                  height: 400,
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
                        MaterialPageRoute(builder: ((context) => muscle1_2())),
                      );
                    },
                    
                    icon: const Icon(Icons.accessibility),
                    label: const Text('กล้ามเนื้อ'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20.0),
                        fixedSize: Size(150, 60),
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
            Text(
              'วิธีปฏิบัติ',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '1. ยืนตรงย่อเข่าเล็กน้อย ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              ' 2. กำมือทั้งสองข้างไว้ที่บั้นเอวพร้อมกับก้าวเท้าซ้ายและขวาเดินสลับกันไป ',
              style: TextStyle(fontSize: 20),
            ),
          ],
        )))),
      ),
    );
  }
}
