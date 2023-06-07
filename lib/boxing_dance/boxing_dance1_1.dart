import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance1_1 extends StatelessWidget {
  const boxing_dance1_1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1. ท่าเสือออกจากเหล่า'),
      ),
      body: Center(
        child: SelectionArea(
          child: Column(
            children: <Widget>[
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 16), // Add some spacing between the buttons
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text("ย้อนกลับ"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20.0),
                      fixedSize: const Size(150, 60),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const manual()),
                      );
                    },
                    icon: const Icon(Icons.book),
                    label: const Text("คู่มือ"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20.0),
                      fixedSize: const Size(150, 60),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Image.asset(
                                    "assets/mgif_1.gif",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.accessibility),
                      label: const Text('กล้ามเนื้อ'),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(5),
                          fixedSize: const Size(150, 60),
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(5),
                  child: const Text('วิธีปฏิบัติ',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
              Expanded(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
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
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
