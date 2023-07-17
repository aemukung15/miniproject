import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';

class Manual extends StatefulWidget {
  // Added named 'key' parameter to the constructor
  const Manual({Key? key}) : super(key: key);

  @override
  State<Manual> createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'คู่มือ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
