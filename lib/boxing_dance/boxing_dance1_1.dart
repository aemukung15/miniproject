import 'package:flutter/material.dart';
import '../drawer.dart';
import '../slide2.dart';

// ignore: camel_case_types
class boxing_dance1_1 extends StatelessWidget {
  const boxing_dance1_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ท่าเสือออกจากเหล่า',
          style: TextStyle(
            fontFamily: 'TH SarabunPSK',
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cover3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SelectionArea(
              child: Column(
                children: <Widget>[
                  const Expanded(
                    child: MySlide2(), // Wrap with Expanded
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 238.1),
                  ),
                  // Rest of your code...
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
                                      "assets/1.png",
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
                            "assets/1.png",
                            width: 300,
                            height: 300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
