import 'package:flutter/material.dart';
import 'package:miniproject/home/homepage.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Container(
        color: const Color.fromARGB(
            255, 255, 204, 204), // Set the background color here
        child: const MyHomePage(
          title: 'Home',
        ),
      ),
    );
  }
}
