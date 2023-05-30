import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance2_2 extends StatelessWidget {
  const boxing_dance2_2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2. ท่าหวะพราย'),
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
                                  "assets/16.jpg",
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
                        "assets/16.jpg",
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
                        "ท่าหวะพราย ผู้รำจะโน้มตัวลงไปข้างหน้าพร้อมกับม้วนแขนทั้งสองข้างเข้ามาในสีข้าง แล้วยกแขนสูงขึ้นเหนือศีรษะ ตระหวัดปลายนิ้วมือไปข้างหน้า 3 ครั้ง เงยหน้าขึ้นมองดูมือ ส่วนเท้ายังเต้นอยู่ตามจังหวะในท่าที่หนึ่ง ทำอย่างนี้ไปจนรอบ เป็นการปัดเสนียดจัญไร ภูตพราย ผี ปีศาจและสิ่งไม่ดีไปให้พ้นจากตัว",
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
