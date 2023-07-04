import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';
import 'package:miniproject/manual.dart';

// ignore: camel_case_types
class record extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const record({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ประวัติรำมวยโบราณ',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
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
                  const SizedBox(width: 16),
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
                                      "assets/P_1.png",
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
                            "assets/P_1.png",
                            width: 300,
                            height: 300,
                          ),
                        ),
                      ),
                    ],
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
                      child: const Text(
                        'รำมวยโบราณ เป็นศิลปะของชาวจังหวัดสกลนคร โดยพัฒนามาจากท่ามวย มวยเป็นการต่อสู้ด้วยพละกำลังโดยใช้อวัยวะเกือบทุกส่วนที่มีอยู่ในตัวมีทั้ง มือ เท้า เข่า ศอก และหัว เป็นการต่อสู้ขั้นมูลฐานที่ใช้อาวุธในร่างกายอย่างทันทีทันใด ตามสัญชาตญาณของมนุษย์ในสมัยอดีตตั้งที่มนุษย์เรายังไม่มีความเจริญความจำเป็นและธรรมชาติได้บีบบังคับให้มนุษย์ต้องต่อสู้ป้องกันตัว',
                        style: TextStyle(
                          fontFamily: 'TH SarabunPSK',
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
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
                                      "assets/P_2.png",
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
                            "assets/P_2.png",
                            width: 300,
                            height: 300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
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
                      child: const Text(
                        'เพื่อรักษาตนเองและครอบครัวด้วยอวัยวะที่มีอยู่ในตัวในการต่อสู้ลักษณะกระชั้นชิดติดตัว มีการเตะถีบเพื่อให้คู่ต่อสู้เสียหลักหรือป้องกันตัวโดยอาวุธของคู่ต่อสู้หรือศัตรูเราจึงเรียกการต่อสู้นี้ว่า (มวย) เพราะฉะนั้นมวยจึงเป็นศาสตร์และศิลป์ที่เกิดมานานนับแต่มีชนชาติ เกิดมาจากการฝึกฝนเล่าเรียนจากผู้รู้ผู้เชี่ยวชาญจากการปฏิบัติยึดมั่นในแนวที่ครูถ่ายทอดให้ (มวย) เป็นวิชาเป็นศาสตร์มีขั้นตอนในการต่อสู้ซึ่งเรียกว่าการ (ชกมวย) มวยเป็นอาวุธที่มีติดตัวอยู่เสมอและเป็นบ่อเกิดอาวุธนอกกาย',
                        style: TextStyle(
                          fontFamily: 'TH SarabunPSK',
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
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
                                      "assets/P_3.png",
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
                            "assets/P_3.png",
                            width: 300,
                            height: 300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
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
                      child: const Text(
                        'จำลอง นวลมณี ผู้มีผลงานดีเด่นทางด้านวัฒนธรรมต่อมา นายจำลอง นวลมณี ผู้คิดประดิษฐ์ท่ารำมวยโบราณ ผู้มีผลงานทางวัฒนธรรมประจำปี 2528 ของภาคตะวันออกเฉียงเหนือ อดีตเป็นนายกเทศมนตรีเทศบาลเมืองสกลนคร ซึ่งได้เคยฝึกหัดมวยโบราณมาจากบิดาของท่านมาตั้งแต่เล็ก ๆจึงได้พยายามปรับปรุงท่ารำให้มีความสมบูรณ์และท่าร่ายรำต่อเนื่องกันเพื่อความสวยงาม ซึ่งทำให้เป็นต้นกำเนิดการรำมวยโบราณที่มีความสวยงานและคล่องแคล่วว่องไว ซึ่งได้กลายมาเป็นศิลปะอย่างหนึ่งชาวจังหวัดสกลนคร',
                        style: TextStyle(
                          fontFamily: 'TH SarabunPSK',
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
