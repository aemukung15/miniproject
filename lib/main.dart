// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';
import 'package:miniproject/home/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tree1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: MyHomePage(title: 'myhome', home: Scaffold()),

      ),
      drawer: const MyDrawer(),
    );
  }
}
