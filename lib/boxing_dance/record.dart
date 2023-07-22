import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';
import '../slide2.dart';

// ignore: camel_case_types
class record extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const record({Key? key}); // Remove the duplicated named argument

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ประวัติรำมวยโบราณ',
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
                        // const SizedBox(height: 30),
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
                                                  "assets/P_1.png",
                                                  fit: BoxFit.contain,
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
                                      "assets/P_1_1_1.png",
                                      width: 345,
                                      height: 700,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
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
                                                  "assets/P_2.png",
                                                  fit: BoxFit.contain,
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
                                child: Image.asset(
                                  "assets/P_2_1_1.png",
                                  width: 400,
                                  height: 700,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
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
                                                  "assets/P_3.png",
                                                  fit: BoxFit.contain,
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
                                child: Image.asset(
                                  "assets/P_3_1_1.png",
                                  width: 400,
                                  height: 850,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 100),
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
