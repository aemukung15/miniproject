import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class bibliography extends StatelessWidget {
  const bibliography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'อ้างอิงข้อมูล',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
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
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(width: 16),
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
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 0.0),
                                  child: Text(
                                    'กฤษดากร บรรลือ. (2564). สารานุกรมศิลปะการแสดงพื้นถิ่',
                                    style: TextStyle(
                                      fontFamily: 'TH SarabunPSK',
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: Text(
                              'นสกลนคร รำมวยโบราณ. พิพิธภัณฑ์เมืองสก',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: Text(
                              'ลนคร หาวิทยาลัยราชภัฏสกลนคร. สืบค้น 16 ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 93.0),
                            child: Text(
                              'พฤศจิกายน 2565 จากhttps://ilac.snru.ac.t',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: Text(
                              'h/wpcontent/uploads/2021/03/มวยโบรา',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Text(
                              'ณสกลนคร.pdf',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 0.0),
                                  child: Text(
                                    'บุญอาย คำฤาเดช. (2565). รำมวยโบราณประยุกต์ สกลนค',
                                    style: TextStyle(
                                      fontFamily: 'TH SarabunPSK',
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 83.0),
                            child: Text(
                              'ร. สาขาวิทยาการสุขภาพ คณะวิทยาศาสตร์',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 93.0),
                            child: Text(
                              'และเทคโนโลยี มหาวิทยาลัยราชภัฏสกลนคร. ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 90.0),
                            child: Text(
                              'มกราคม 2566 จากรูปเล่ม รำมวยโบรา',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(right: 102.0),
                            child: Text(
                              'ยุกต์ สกลนคร.',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 0.0),
                                  child: Text(
                                    'ประวิทย์ มาสกุลรัตน์. (2530) เชิดชูเกียรติ จำลอง นวลมณี ',
                                    style: TextStyle(
                                      fontFamily: 'TH SarabunPSK',
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 90.0),
                            child: Text(
                              'ผู้มีผลงานดีเด่นทางด้าน วัฒนาธรรม ต่อมา น',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 90.0),
                            child: Text(
                              'ายจำลองนวลมณี ผู้คิดประดิษฐ์ท่ารำมวยโบ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 90.0),
                            child: Text(
                              'ราณ ผู้มีผลงานทางวัฒนธรรมประจำปี 2529 ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: Text(
                              'ของภาคตะวันออกเฉียงเหนือ. ห้างหุ้นส่วนจำ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 90.0),
                            child: Text(
                              'กัด ป. สัมพันธ์พาณิชย์. สืบ ค้น 16 พฤศจิกา',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: Text(
                              'ยน 2565 จาก รูปเล่ม เชิดชูเกียรติ จำลองนว',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 95.0),
                            child: Text(
                              'ลมณี ผู้มีผลงานดีเด่นทางด้าน วัฒนาธรรมต่อ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(right: 40.0),
                            child: Text(
                              'มา นายจำลอง นวลมณี.',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 0.0),
                                  child: Text(
                                    'ธณัฏฐา ทิวกร และณัฐวี อุตกฤษฏ์. (2564). การป้องกันการ',
                                    style: TextStyle(
                                      fontFamily: 'TH SarabunPSK',
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 95.0),
                            child: Text(
                              'ปลอมแปลงการแสดงตำแหน่งตัวตนในระบบ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: Text(
                              'บันทึกเวลาปฏิบัติงานบนโทรศัพท์มือถือประ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: Text(
                              'เภทสมาร์ทโฟน เพื่อเพิ่มความถูกต้องและน่า',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 90.0),
                            child: Text(
                              'เชื่อถือของข้อมูล1-5 สืบค้น 19 พฤศจิกายน ',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 90.0),
                            child: Text(
                              '2565 จาก https://tdc.thailis.or.th/tdc/dc',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 95.0),
                            child: Text(
                              'check.php?Int_code=52&recId=39965&o',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Text(
                              'bj_id=209664&showmenu=no.',
                              style: TextStyle(
                                fontFamily: 'TH SarabunPSK',
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
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
