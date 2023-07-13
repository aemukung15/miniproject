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
        title: const Text(
          'คณะผู้พัฒนา',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Scrollbar(
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
                const SizedBox(height: 8),
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
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'นายสิทธิพร วงศ์บาตร',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'นักศึกษา',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'หนักสูตรวิชาวิทยาการคอมพิวเตอร์',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'มหาลัยราชภัฏสกลนคร',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
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
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Image.asset(
                                        "assets/dr.jpg",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Column(
                                        children: [
                                          Text(
                                            'ดร. นิภาพร ชนะมาร',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            'อาจารย์',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            'สาขาวิทยาการคอมพิวเตอร์',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            'มหาลัยราชภัฏสกลนคร',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
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
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'ดร.นิภาพร ชนะมาร',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'อาจารย์',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'สาขาวิทยาการคอมพิวเตอร์',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'มหาลัยราชภัฏสกลนคร',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
