import 'package:flutter/material.dart';

class developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ผู้พัฒนา'),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                            height: 350,
                            width: 350,
                            child: const Image(
                                image: AssetImage("assets/D_2.jpg"))),
                        const Text('นายสิทธิพร วงศ์บาตร',
                            style: TextStyle(fontSize: 20)),
                        const Text('รหัสนักศึกษา 63102105136',
                            style: TextStyle(fontSize: 20)),
                        const Text('สาขาวิทยาการคอมพิวเตอร์',
                            style: TextStyle(fontSize: 20)),
                        const Text('คณะวิทยาศาสตร์และเทคโนโลยี',
                            style: TextStyle(fontSize: 20)),
                        const Text('มหาลัยราชภัฏสกลนคร',
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height: 350,
                          width: 350,
                          child:
                              const Image(image: AssetImage("assets/dr.jpg"))),
                      Text('อาจารย์ที่ปรึกษา ดร.นิภาพร ชนะมาร',
                          style: TextStyle(fontSize: 20)),
                      Text('ผู้ชำนาญการ สาขาวิทยาการคอมพิวเตอร์',
                          style: TextStyle(fontSize: 20)),
                      Text('คณะวิทยาศาสตร์และเทคโนโลยี',
                          style: TextStyle(fontSize: 20)),
                      Text('มหาลัยราชภัฏสกลนคร',
                          style: TextStyle(fontSize: 20)),
                      SizedBox(
                      height: 5,
                    ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
