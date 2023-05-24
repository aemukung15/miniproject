import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ประวัติรำมวยโบราณ'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: SelectionArea(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 350.0,
                    width: double.infinity,
                    child: Carousel(
                      dotSize: 6.0,
                      dotSpacing: 15.0,
                      dotPosition: DotPosition.bottomCenter,
                      images: [
                        Image.asset('assets/P_1.png', fit: BoxFit.cover),
                        Image.asset('assets/P_2.png', fit: BoxFit.cover),
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                    'รำมวยโบราณ เป็นศิลปะของชาวจังหวัดสกลนคร โดยพัฒนามาจากท่ามวย มวยเป็นการต่อสู้ด้วยพละกำลังโดยใช้อวัยวะเกือบทุกส่วนที่มีอยู่ในตัวมีทั้ง มือ เท้า เข่า ศอก และหัว เป็นการต่อสู้ขั้นมูลฐานที่ใช้อาวุธในร่างกายอย่างทันทีทันใด ตามสัญชาตญาณของมนุษย์ในสมัยอดีตตั้งที่มนุษย์เรายังไม่มีความเจริญความจำเป็นและธรรมชาติได้บีบบังคับให้มนุษย์ต้องต่อสู้ป้องกันตัว เพื่อรักษาตนเองและครอบครัวด้วยอวัยวะที่มีอยู่ในตัวในการต่อสู้ลักษณะกระชั้นชิดติดตัว มีการเตะถีบเพื่อให้คู่ต่อสู้เสียหลักหรือป้องกันตัวโดยอาวุธของคู่ต่อสู้หรือศัตรูเราจึงเรียกการต่อสู้นี้ว่า (มวย) เพราะฉะนั้นมวยจึงเป็นศาสตร์และศิลป์ที่เกิดมานานนับแต่มีชนชาติ เกิดมาจากการฝึกฝนเล่าเรียนจากผู้รู้ผู้เชี่ยวชาญจากการปฏิบัติยึดมั่นในแนวที่ครูถ่ายทอดให้ (มวย) เป็นวิชาเป็นศาสตร์มีขั้นตอนในการต่อสู้ซึ่งเรียกว่าการ (ชกมวย) มวยเป็นอาวุธที่มีติดตัวอยู่เสมอและเป็นบ่อเกิดอาวุธนอกกาย ',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Image.asset(
                      "assets/P_3.png",
                      width: 300,
                      height: 300,
                    ),
                  ),
                  Center(
                    child: Text(
                    'จำลอง นวลมณี ผู้มีผลงานดีเด่นทางด้านวัฒนธรรมต่อมา นายจำลอง นวลมณี ผู้คิดประดิษฐ์ท่ารำมวยโบราณ ผู้มีผลงานทางวัฒนธรรมประจำปี 2528 ของภาคตะวันออกเฉียงเหนือ อดีตเป็นนายกเทศมนตรีเทศบาลเมืองสกลนคร ซึ่งได้เคยฝึกหัดมวยโบราณมาจากบิดาของท่านมาตั้งแต่เล็ก ๆจึงได้พยายามปรับปรุงท่ารำให้มีความสมบูรณ์และท่าร่ายรำต่อเนื่องกันเพื่อความสวยงาม ซึ่งทำให้เป็นต้นกำเนิดการรำมวยโบราณที่มีความสวยงานและคล่องแคล่วว่องไว ซึ่งได้กลายมาเป็นศิลปะอย่างหนึ่งชาวจังหวัดสกลนคร',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    
                  ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
