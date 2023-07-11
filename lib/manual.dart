import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';

// ignore: camel_case_types
class manual extends StatelessWidget {
  const manual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('คู่มือ',
        style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
        centerTitle: true,
      ),
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                        width: 16), // Add some spacing between the buttons
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
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'แฮมเบอร์เกอร์เมนู',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/hamburger_menu.png",
                    width: 100, // Set the desired width for the image
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'โดยจะมีเมนูต่างๆ อยู่ข้างในให้เลือก',
                          style: TextStyle(
                            fontFamily: 'TH SarabunPSK',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                const Text(
                  'เมนู',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/hamburger_menu_in.png",
                    width: 300, // Set the desired width for the image
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '1. หน้าแรก',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/home_page.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'หน้าแรกของแอปพลิเคชันถ่ายทอกความรู้ท่ารำมวยโบราณจังหวัดสกลนคร',
                          style: TextStyle(
                            fontFamily: 'TH SarabunPSK',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                const Text(
                  '2. ประวัติความเป็นมารำมวยโบราณ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/record.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'โดยจะอธิบายคราวๆ ของที่มาเรื่องรำมวยโบราณจังหวัดสกลนคร',
                          style: TextStyle(
                            fontFamily: 'TH SarabunPSK',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                const Text(
                  '3. เมนูท่ารำเดี่ยวและท่ารำหมู่',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/drawer.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'โดยจะมีเมนูย่อย ท่ารำเดี่ยว 12 ท่า และ ท่ารำหมู่ 9 ท่า ',
                          style: TextStyle(
                            fontFamily: 'TH SarabunPSK',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                const Text(
                  '4. หน้าท่ารำ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/Tha_menu.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'โดยจะจะมีรูปภาพ ท่ารำ 1 ท่า และมีปุ่ม แสดงกล้ามเนื้อ เมื่อกดจะโชว์ มันกล้ามเนื้อที่ไกเจากการรำ ในท่านั้น จะมีหน้าและหลัง แอปพลิเคชันถ่ายทอกความรู้ท่ารำมวยโบราณจังหวัดสกลนคร',
                          style: TextStyle(
                            fontFamily: 'TH SarabunPSK',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                const Text(
                  '5. หน้าผู้พัฒนา',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/developer.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'โดยจะมีของข้อมูลผู้พัฒนา แอปพลิเคชันถ่ายทอกความรู้ท่ารำมวยโบราณจังหวัดสกลนคร',
                          style: TextStyle(
                            fontFamily: 'TH SarabunPSK',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height:8), // กำหนดความสูงของช่องว่างระหว่างข้อความ ในที่นี้ใช้ 8
                const Text(
                  '6. หน้าอ้างอิงข้อมูล',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/refer.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'อ้างอิงถึงแหล่งที่มาของข้อมูล ในงานวิจัย',
                          style: TextStyle(
                            fontFamily: 'TH SarabunPSK',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
