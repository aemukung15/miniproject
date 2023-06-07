// ignore_for_file: dead_code
import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';
import 'package:miniproject/manual.dart';

// ignore: camel_case_types
class developer extends StatelessWidget {
  const developer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('คณะผู้พัฒนา'),
      ),
      body: Center(
        child: SingleChildScrollView(
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
                                  "assets/D_2.jpg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          );
                          const Text('นายสิทธิพร วงศ์บาตร',
                              style: TextStyle(fontSize: 20));
                          const Text('รหัสนักศึกษา 63102105136',
                              style: TextStyle(fontSize: 20));
                          const Text('สาขาวิทยาการคอมพิวเตอร์',
                              style: TextStyle(fontSize: 20));
                          const Text('คณะวิทยาศาสตร์และเทคโนโลยี',
                              style: TextStyle(fontSize: 20));
                          const Text('มหาลัยราชภัฏสกลนคร',
                              style: TextStyle(fontSize: 20));
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset(
                        "assets/D_2.jpg",
                        width: 300, // Set the desired width for the image
                        height: 300, // Set the desired height for the image
                      ),
                    ),
                  ),
                ],
              ),
              const Text('นายสิทธิพร วงศ์บาตร', style: TextStyle(fontSize: 20)),
              const Text('รหัสนักศึกษา 63102105136',
                  style: TextStyle(fontSize: 20)),
              const Text('สาขาวิทยาการคอมพิวเตอร์',
                  style: TextStyle(fontSize: 20)),
              const Text('คณะวิทยาศาสตร์และเทคโนโลยี',
                  style: TextStyle(fontSize: 20)),
              const Text('มหาลัยราชภัฏสกลนคร', style: TextStyle(fontSize: 20)),
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
                                  "assets/dr.jpg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          );
                          const Text('อาจารย์ที่ปรึกษา ดร.นิภาพร ชนะมาร',
                              style: TextStyle(fontSize: 20));
                          const Text('ผู้ชำนาญการ สาขาวิทยาการคอมพิวเตอร์',
                              style: TextStyle(fontSize: 20));
                          const Text('คณะวิทยาศาสตร์และเทคโนโลยี',
                              style: TextStyle(fontSize: 20));
                          const Text('มหาลัยราชภัฏสกลนคร',
                              style: TextStyle(fontSize: 20));
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset(
                        "assets/dr.jpg",
                        width: 300, // Set the desired width for the image
                        height: 300, // Set the desired height for the image
                      ),
                    ),
                  ),
                ],
              ),
              const Text('อาจารย์ที่ปรึกษา ดร.นิภาพร ชนะมาร',
                  style: TextStyle(fontSize: 20)),
              const Text('ผู้ชำนาญการ สาขาวิทยาการคอมพิวเตอร์',
                  style: TextStyle(fontSize: 20)),
              const Text('คณะวิทยาศาสตร์และเทคโนโลยี',
                  style: TextStyle(fontSize: 20)),
              const Text('มหาลัยราชภัฏสกลนคร', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
