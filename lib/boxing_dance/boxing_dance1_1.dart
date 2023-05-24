import 'package:flutter/material.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_10.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_11.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_12.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_13.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_14.dart';
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

class boxing_dance1_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('1. ท่าเสือออกจากเหล่า'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => Image.asset("assets/1.png"));
              },
              child: Image.network(
                "assets/1.png",
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                          context: context,
                          // builder: (_) => Image.asset("assets/m1.gif"),
                          builder: (BuildContext contextPopup) {
                            return AlertDialog(
                              content: Center(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(contextPopup).pop();
                                  },
                                  child: Image.asset(
                                    "assets/m1.gif",
                                    width: 300,
                                    height: 300,
                                  ),
                                ),
                              ),
                            );
                          });
                      child:
                      Image.network(
                        "assets/m1.gif",
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      );
                    },
                    icon: const Icon(Icons.accessibility),
                    label: const Text('กล้ามเนื้อ'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(5),
                        fixedSize: Size(150, 60),
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(5),
                child: Text('วิธีปฏิบัติ',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ท่าเสือออกเล่า นับเป็นท่าเริ่มต้นหรือท่าออกสู่เวที โดยผู้แสดงจะทะยานออกจากฉากอย่างรวดเร็ว พร้อมกับใช้มือ ทั้งสองข้างตบลอดขา ทั้งสองข้างอย่างว่องไว แล้วยกแขนข้างหนึ่ง ให้สูงขึ้น เพื่อเปิดช่องว่างให้ตบสีข้างใต้รักแร้ ตามด้วยการตบที่ใต้ ศอก หลังมือ เข่า ไหล่ ส้นเท้า และขาด้านนอก แล้วกระโดดถอยหลังและโยกตัวไปข้างหน้า พร้อมกับตบมือ และหมุนตัวตบยอดอก ด้วยฝ่ามือทั้งสองข้าง แล้วใช้หลังมือข้างหนึ่ง ตบขาใน และกระโดด เตะฝ่ามือ ที่ยื่นไปข้างหน้า แล้วทิ้งตัวลงในท่าย่อเขา ลากขาอีกข้าง หนึ่งไปข้างหลังในท่าแอ่นอก กางศอก มือกำวางไว้ที่บั้นเอว ทั้งสองข้าง สายตาผู้แสดงสอดส่ายไปมาชั่วขณะหนึ่ง แล้วกางแขน ทั้งสองออกให้ขนานกับพื้นโดยขาที่อยู่ข้างหลังยังเหยียดตึงอยู่ ต่อไปให้ยกขาที่เหยียดอยู่ข้างหลังสูงขึ้นในระดับบั้นเอว แล้วม้วนแขนทั้งสองข้าง เข้าหาที่บริเวณท้องน้อยแล้วจีบมือทั้งสอง ยกชูสูงขึ้น เหนือศีรษะให้แขนและปลายมือเหยียด โดยแหงนหน้ามองขึ้นสู่ด้านบน เป็นการแสดงความเคารพต่อพญาแถน เรียกอย่างหนึ่งว่า “รำถวายแถน”",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ))
          ],
        )));
  }
}
