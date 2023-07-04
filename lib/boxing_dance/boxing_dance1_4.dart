import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance1_4 extends StatelessWidget {
  const boxing_dance1_4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ท่าลับหอกโมกขศักดิ์'
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SelectionArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      width: 16), // Add some spacing between the buttons
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
                  const SizedBox(width: 16),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const manual()),
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
              ),
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
                                  "assets/4.png",
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
                        "assets/4.png",
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
                                    "assets/mgif_4.gif",
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
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            SizedBox(height: 5),
                            Text(
                              "ท่าลับหอกโมกขศักดิ์ มีลักษณะเด่นคือการโยกตัวเหยียดขา 45 อาศา ผู้แสดงจะลดขาที่ยกอยู่ระดับเอว ให้ต่ำลงมาติดกับพื้น และชิดกับเท้าที่ยืนอยู่แล้ว แขนทั้งสองข้างกางออกให้ขนานกับพื้น โดยหันตัวไปทางข้าง แล้วย่อเข่าข้างหนึ่งลง กับเหยียดขาอีกข้างหนึ่งออกไปให้ตึง ในระดับ 45 องศา และเหยียดแขนอีกข้างที่เข่าย่อลง ให้ตรงชูให้สูงพ้นศีรษะประมาณ 45 องศามือฟ้อนรำในลักษณะ หมุนเป็นวงกลม ส่วนแขนอีกข้างหนึ่งเหยียดลงข้างล่างให้ได้แนว เดียวกับแขนที่เหยียดขึ้นข้างบน มือก็ให้ฟ้อนรำเหมือนกัน ทำอย่างนี้ สักสองหรือสามครั้ง เมื่อทำข้างหนึ่งเสร็จแล้วก็ให้ทำอีกข้างหนึ่ง สลับกันไป ต่อไปให้ยกขาทั้งสองมาชิดติดกัน และค่อย ๆ ย่อตัวลงนั่ง บนส้นเท้า ส่วนแขนทั้งสองมารวมกันที่หน้าอก แบมือและคว่ำฝ่ามือลง พร้อมขยับไปมาหลายครั้ง จนลงไปนั่งส้นเท้า แล้วกางแขนออกทั้งสองข้างให้ขนานกับพื้น หงายมือขึ้นสลัดปลายนิ้วให้เข้าจังหวะดนตรี",
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
