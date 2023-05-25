import 'package:flutter/material.dart';
import 'package:miniproject/boxing_dance/Google_Bottom_Bar/Tab_bar.dart';
import 'package:miniproject/home/homepage.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomePage(title: 'Home',),
    );
  }
}
