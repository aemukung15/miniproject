import 'package:flutter/material.dart';
import '../drawer.dart';
import '../slide2.dart';

// ignore: camel_case_types
class boxing_dance2_8 extends StatelessWidget {
  const boxing_dance2_8({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ท่าแหลวถลากาตากปีก',
          style: TextStyle(
            fontFamily: 'TH SarabunPSK',
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // ทำให้ Text อยู่ตรงกลาง
      ),
      body: Stack(
        children: [
          // Background image container with BoxDecoration
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cover2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Expanded(
            child: MySlide2(), // Wrap with Expanded
          ),
          // const SizedBox(height: 8),
          GestureDetector(
            child: Center(
              child: SelectionArea(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 80),
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
                                        "assets/22.png",
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
                              "assets/22.png",
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
                                          "assets/mgif_2_8.gif",
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
                              ),
                              backgroundColor: const Color.fromARGB(
                                  255,
                                  239,
                                  214,
                                  157), // Set the desired button color using RGB values
                              foregroundColor: const Color.fromARGB(
                                  255, 0, 0, 0), // Set the desired text color
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: const Text('วิธีปฏิบัติ',
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
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
                                    "ท่าแหลวถลากาตากปีก ท่าต่อเนื่องจากทวงฮักกวักชู้ คือผู้รำจะถอยเท้าที่ตบพื้นอยู่มาข้างหลัง 1 ก้าว แล้วเท้าอีกข้างหนึ่งก็ถอยมาชิดติดกัน ส่วนแขนทั้งสองที่ยื่นไปข้างหน้าถอยมารวมกันที่หน้าอก ในลักษณะจีบมือและเท้าที่อยู่ข้างหน้าก็ก้าวไปข้างหน้าอีก 1 ก้าว และเท้าที่ก้าวไปก่อนให้ถอยหลังมาอีก 1 ก้าว เท้าที่ก้าวข้ามไปก็ให้ถอยมารวมกันอีกและลำตัวให้หมุนไปอยู่ข้างหนึ่งด้วย ส่วนแขนทั้งสองให้กางขนานกับพื้นถลาไปตามลำตัวที่หมุนทำอย่างนี้สลับข้างขวา-ซ้าย กันสามครั้งแล้วย่อตัวเตี้ยต่ำลง ส่วนแขนทั้งสองยังกางเหมือนนกบินร่อนอยู่ เมื่อได้จังหวะก็ลุกขึ้นก้าวขาและกางแขนทำเหมือนกับที่กล่าวมาแล้ว",
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
        ],
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
