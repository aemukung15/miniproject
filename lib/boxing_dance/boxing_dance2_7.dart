import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance2_7 extends StatelessWidget {
  const boxing_dance2_7({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ท่าทวงฮัก กวักชู้'
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
                                  "assets/21.jpg",
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
                        "assets/21.pjpg",
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
                                    "assets/mgif_2_7.gif",
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
                              "ท่าทวงฮัก กวักชู้ รำจะเต้นไปข้างหน้าสามก้าว ในรูปทะแยงมุมแบบลายฟันปลา พร้อมกับแขนทั้งสองข้างบนตีสีข้างให้ดัง คล้ายไก่ตีปีก ตามจังหวะเท้าที่ที่เต้นไป แล้วเอี้ยวตัวส่งแขนทั้งสองยื่นไปข้างหน้า ให้ขนานกับพื้น แบมือทั้งสองกวักไปข้างหน้าตามจังหวะดนตรี ส่วนขาที่อยู่ข้างหน้ายืนเป็นหลักย่อเข่าลงเล็กน้อย อีกขาหนึ่งไขว้หลังยื่นไปข้างหน้าใช้ปลายเท้าตบพื้นเป็นจังหวะเข้ากับมือที่กวักอยู่ประมาณ 3 ครั้ง ต่อไปก็ให้เต้นไปข้างหน้าสามก้าว แขนทั้งสองตีปีกและยื่นไปข้างหน้า ทำนองเรียกคนรักให้กลับมา ส่วนเท้าก็ใช้ปลายตบพื้นตามจังหวะที่มือกวัก เหมือนกับที่ทำมาแล้ว แต่เป็นการทำสลับขวา-ซ้าย",
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
