import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

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
          'รำมวยโบราณจังหวัดสกลนคร',
          style: TextStyle(
            fontFamily: 'TH SarabunPSK',
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/tree2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            child: Center(
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
                    ),const SizedBox(height: 32),
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
                                        "assets/imaghome.png",
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
                              "assets/imaghome.png",
                              width: 300,
                              height: 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'ยินดีต้อนรับทุกท่าน',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'TH SarabunPSK',
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'แอปพลิเคชัน',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'TH SarabunPSK',
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'ถ่ายทอดความรู้ท่า',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'TH SarabunPSK',
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'จังหวัดสกลนคร',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'TH SarabunPSK',
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}
