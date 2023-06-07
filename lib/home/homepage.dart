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
        // backgroundColor: Color.fromRGBO(70, 61, 7, 0.578),
        title: const Text('รำมวยโบราณจังหวัดสกลนคร'),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: SelectionArea(
                child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 16), // Add some spacing between the buttons
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
                        MaterialPageRoute(builder: (context) => const manual()),
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
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  "assets/imaghome.png",
                  width: 400,
                  height: 400,
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text('ยินดีต้อนรับทุกท่าน',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text('แอปพลเคชัน ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
          ],
        ))),
      ),
      drawer: const MyDrawer(),
    );
  }
}
