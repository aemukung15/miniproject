import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance1_8 extends StatelessWidget {
  const boxing_dance1_8({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ท่าน้าวคันศร'),
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
              const SizedBox(width: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
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
                                  "assets/8.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset(
                        "assets/8.png",
                        width: 300, // Set the desired width for the image
                        height: 300, // Set the desired height for the image
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
                                    "assets/mgif_8.gif",
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
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          SizedBox(height: 5),
                          Text(
                            "ท่าน้าวคันศร มีลักษณะเด่น คือ ผู้แสดงจะเหยาะย่าง เตี้ยต่ำแล้วหยุดยกขาข้างหนึ่งสูงขึ้น และยืดตัว ยืดขาให้ตรง และทรงตัวอยู่ ด้วยขาข้างเดียว ยกแขนไปข้างหน้าตั้งฉากกับลำตัว และแขน อีกข้างหนึ่งยื่นไปข้างหลังอยู่ในระดับเดียวกัน ในลักษณะน้าวคันศรแล้วค่อย ๆ โน้มตัวไปข้างหน้า จากนั้นลดขาที่ยกสูงลงมาแตะพื้น ย่อเข่าเล็กน้อย พร้อมกับยกเข่าที่ยืนทรงตัวอยู่ให้สูงขึ้น คลายมือทั้งสองข้างให้แบออก แล้ววาดแขนและขาที่อยู่ข้างหลังไปข้างหน้า พร้อม ๆ กัน ขายกสูงอยู่ระดับเอว แขนม้วนเข้าบริเวณหน้าอก ตวัดเหยียดไปข้างหน้าขนานกับพื้น แขนข้างหน้าวาดข้ามศีรษะ ไปข้างหลังอยู่ระดับเดียวกับแขนที่ยื่นไปข้างหน้าในลักษณะน้าวคันศร เช่นเดียวกับที่ทำมาแล้ว ค่อย ๆ โน้มตัวไปข้างหน้า ลดขาที่ยกสูงลงจนจดพื้น ย่อเข่าลงเล็กน้อยพร้อมกับยกขาที่ยืนอยู่ให้สูงขึ้น คลายมือทั้งสองข้างออก ประดุจปล่อยลูกศรออกจากแหล่งเป็นครั้งที่สอง",
                            style: TextStyle(
                              fontFamily: 'TH SarabunPSK',
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
