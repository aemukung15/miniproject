import 'package:flutter/material.dart';
import '../drawer.dart';
import '../slide.dart';
// Rest of the code remains the same

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'หน้าแรก',
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
                  image: AssetImage('assets/cover.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const MySlide(),
          // const SizedBox(height: 8),
          SingleChildScrollView(
            child: Center(
              child: SelectionArea(
                child: Column(
                  children: <Widget>[
                    // Add the carousel slide widget here
                    const SizedBox(height: 120),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                const EdgeInsets.symmetric(vertical: 30);
                                return Dialog(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Image.asset(
                                        "assets/imagehome.png",
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
                              "assets/imagehome.png",
                              width: 400,
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
        ],
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
