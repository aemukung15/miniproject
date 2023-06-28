import 'package:flutter/material.dart';
import '../manual.dart';
import '../drawer.dart';

// ignore: camel_case_types
class bibliography extends StatefulWidget {
  const bibliography({super.key});

  @override
  State<bibliography> createState() => _bibliographyState();
}

// ignore: camel_case_types
class _bibliographyState extends State<bibliography> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'บรรณานุกรม',
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
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
                const Center(
                  child: Text(
                    'กฤษดากร บรรลือ. (2564). สารานุกรมศิลปะการแสดงพื้นถิ่นสกลนคร รำมวยโบราณ. พิพิธภัณฑ์เมืองสกลนครมหาวิทยาลัยราชภัฏสกลนคร. สืบค้น 16 พฤศจิกายน 2565 จากhttps://ilac.snru.ac.th/wpcontent/uploads/2021/03/มวยโบราณสกลนคร.pdf',
                    style: TextStyle(fontSize: 23),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Center(
                  child: Text(
                    'บุญอาย คำฤาเดช. (2565). รำมวยโบราณประยุกต์ สกลนคร. สาขาวิทยาการสุขภาพ คณะวิทยาศาสตร์และเทคโนโลยี มหาวิทยาลัยราชภัฏสกลนคร. สืบค้น 1 มกราคม 2566 จากรูปเล่ม รำมวยโบราณประยุกต์ สกลนคร.',
                    style: TextStyle(fontSize: 23),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                const Center(
                  child: Text(
                    'ประวิทย์ มาสกุลรัตน์. (2530) เชิดชูเกียรติ จำลอง นวลมณี ผู้มีผลงานดีเด่นทางด้าน วัฒนาธรรม  ต่อมา นายจำลอง นวลมณี ผู้คิดประดิษฐ์ท่ารำมวยโบราณ ผู้มีผลงานทางวัฒนธรรมประจำปี 2529 ของภาคตะวันออกเฉียงเหนือ. ห้างหุ้นส่วนจำกัด ป. สัมพันธ์พาณิชย์. สืบค้น 16 พฤศจิกายน 2565 จาก รูปเล่ม เชิดชูเกียรติ จำลอง นวลมณี ผู้มีผลงานดีเด่นทางด้าน วัฒนาธรรม  ต่อมา นายจำลอง นวลมณี.',
                    style: TextStyle(fontSize: 23),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Center(
                  child: Text(
                    'ธณัฏฐา ทิวกร และณัฐวี อุตกฤษฏ์. (2564). การป้องกันการปลอมแปลงการแสดงตำแหน่งตัวตนในระบบ บันทึกเวลาปฏิบัติงานบนโทรศัพท์มือถือประเภทสมาร์ทโฟน เพื่อเพิ่มความถูกต้องและน่าเชื่อถือของข้อมูล1-5 สืบค้น 19 พฤศจิกายน 2565 จาก https://tdc.thailis.or.th/tdc/dccheck.php?Int_code=52&recId=39965&obj_id=209664&showmenu=no.',
                    style: TextStyle(fontSize: 23),
                    textAlign: TextAlign.center,
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
