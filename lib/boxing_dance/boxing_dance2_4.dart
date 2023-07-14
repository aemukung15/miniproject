import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class boxing_dance2_4 extends StatelessWidget {
  const boxing_dance2_4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ท่าย้ายเล้าหรือย่างสามขุม',
          style: TextStyle(
            fontFamily: 'TH SarabunPSK',
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tree2.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SelectionArea(
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
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Image.asset(
                                    "assets/18.jpg",
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
                          "assets/18.jpg",
                          width: 300, // Set the desired width for the image
                          height: 300, // Set the desired height for the image
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Image.asset(
                                      "assets/mgif_2_4.gif",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.accessibility),
                        label: const Text('กล้ามเนื้อ'),
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(5),
                            fixedSize: const Size(150, 60),
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(5),
                    child: const Text('วิธีปฏิบัติ',
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
                Expanded(
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
                    child: const Scrollbar(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                "ท่าน้าวเฮียวไผ่หรือน้าวเรียวไผ่ ผู้รำจะเบนขาที่ยกสูงให้เอียงมาอยู่อีกข้างหนึ่งปล่อยแขนที่วางไว้ให้หย่อนลงมาข้างๆขา พร้อมกับเหวี่ยงแขนที่อยู่ขั้นเอวให้โน้มน้าวขึ้นพ้นศีรษะมาตั้งศอกกำมือไว้ที่บั้นเอวตามเดิม ส่วนแขนข้างหน้าที่หย่อนลงให้งอข้อศอกขึ้น และตั้งไว้ที่ขาซึ่งไว้แล้ว เหยาะย่างย่อตัวให้ต่ำเตี้ย เอียงไหล่ลงตามจินตนาการยอดไผ่ที่ต้องลมยิ่มน้าวโน้มโอนเอนอ่อนช้อยย้อยต่ำลงมาฉันนั้น",
                                style: TextStyle(
                                  fontFamily: 'TH SarabunPSK',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
