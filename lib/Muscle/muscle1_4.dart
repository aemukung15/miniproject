import 'package:flutter/material.dart';

class muscle1_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ส่วนต่างๆของกล้ามเนื้อ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 700,
                width: 700,
                child: const Image(image: AssetImage("assets/4.gif"))),
          ],
        ),
      ),
    );
  }
}
