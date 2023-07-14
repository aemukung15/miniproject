import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance2_6 extends StatelessWidget {
  const boxing_dance2_6({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ท่าช้างม้วนงวง',
          style: TextStyle(
            fontFamily: 'TH SarabunPSK',
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tree2.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
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
                                    "assets/20.jpg",
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
                          "assets/20.jpg",
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
                                      "assets/mgif_2_6.gif",
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
                    child: const Scrollbar(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                "ท่าช้างม้วนงวง ผู้รำจะยกขายืนชิดติดกันแล้วยกเข่าไปข้างหน้าให้สูงระดับเอวม้วนท่อนแขนช่วงล่างทั้งสองแขน หมุนลักษณะควงหมัดกลมหลายๆรอบ อยู่เหนือขาที่ยกไว้ พร้อมกับก้าวขาสืบเท้าไปข้างหน้า 3 ก้าว หยุดยืนยกขาข้างหนึ่งมาข้างหลังงอเข่าให้สูงขึ้นพร้อมกับเหวี่ยงแขนทั้งสองออกจนสุดแขน โน้มตัวไปข้างหน้าย่อเข่าลงเล็กน้อย แล้วม้วนแขนทั้งสองข้างหมุนควงหมัดวงกลมและก้าวขาสืบเท้าไปข้างหน้า 3 ก้าว เหมือนครั้งก่อนไปจนรอบ",
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
      ),
      drawer: const MyDrawer(),
    );
  }
}
