import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';
import '../slide2.dart';

// ignore: camel_case_types
class bibliography extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const bibliography({Key? key}); // Remove the duplicated named argument

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'อ้างอิงข้อมูล',
          style: TextStyle(
            fontFamily: 'TH SarabunPSK',
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // ทำให้ Text อยู่ตรงกลาง
      ),
      body: Stack(
        children: [
          // Background image container with BoxDecoration
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cover3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Center(
              child: SelectionArea(
                child: SingleChildScrollView(
                  child: Scrollbar(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
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
                                          child: IntrinsicHeight(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/bibliography.png",
                                                  width:
                                                      350, // Set the desired width for the image
                                                  height: 900,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        height:
                                            85), // Move this line inside the Column
                                    Image.asset(
                                      "assets/bibliography.png",
                                      width:
                                          350, // Set the desired width for the image
                                      height: 900,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SingleChildScrollView(
            child: MySlide2(), // Wrap with Expanded
          ),
        ],
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
