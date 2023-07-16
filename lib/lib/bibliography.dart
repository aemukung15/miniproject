import 'package:flutter/material.dart';
import '../drawer.dart';

// ignore: camel_case_types
class bibliography extends StatelessWidget {
  const bibliography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'อ้างอิงข้อมูล',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cover3.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Image.asset(
                      "assets/bibliography.png",
                      width: 350, // Set the desired width for the image
                      height: 900, // Set the desired height for the image
                    ),
                  ),
                  const SizedBox(height: 15),
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
