import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance2_9 extends StatelessWidget {
  const boxing_dance2_9({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('9. ท่าเลาะเลียบตูบ'),
      ),
      body: Center(
        child: SelectionArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                                  "assets/23.jpg",
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
                        "assets/23.jpg",
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
                                    "assets/m2.gif",
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
                        "ท่าเลาะเลียบตูบ ผู้รำจะวาดแขนข้างหนึ่งไปข้างหน้าแบบตักช้อยปลาหงายฝ่ามือ ค่อยๆ ยกขึ้นจนได้ระดับไหล่จึงพลิกข้อมือเป็นคว่ำ แล้วสลัดปลายนี้วขึ้นเหนือศีรษะ 3 ครั้ง ลำตัวโน้มไปข้างหน้าตามแขนที่ยื่นไป ส่วนมืออีกข้างหนึ่งเหยียดตรงมาข้างหลัง หงายฝ่ามือและสลัดปลายนี้วอย่างเดียวกัน ทำอย่างนี้สลับกัน เปลี่ยนเป็นข้างซ้ายข้างขวา ส่วนเท้าทั้งสองข้างเต้นตามจังหวะการเต้นก้อนไถในแบบท่าที่ 1",
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
