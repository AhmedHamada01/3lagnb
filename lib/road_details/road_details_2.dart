import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:dotted_border/dotted_border.dart';

class RoadDetails2 extends StatelessWidget {
  const RoadDetails2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 5.0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 17.0,right: 18.0),
              child: SvgPicture.asset(
                'assets/logo - Copy.svg',
                alignment: Alignment.bottomCenter,
                width: 100.0,
                height: 100.0,
                color: Colors.white,
              ),
            ),
          ],
          bottom: PreferredSize(
            child:SizedBox(
              height: 30,
            ) ,
            preferredSize: Size.fromHeight(30),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0)
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 30.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 50.0,
                  height: 30.0,
                  margin: EdgeInsets.only(top: 30.0,left: 260.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'مواصلات ممشي اهل مصر من الزقازيق ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'هتركب سرفيس الجامعه الاحرار و هتنزل عند'
                        'الموقف و بعدين تركب ميكروباص الزقازيق'
                        ' الزراعه و تنزل عند المترو و تركب المترو اتجاه '
                        '   المنيب و تحول من محطه الشهداء للخط الاول'
                        ' اتجاه حلوان و تحول من محطه جمال عبد الناصر  '
                        'للخط التالت و تنزل محطه ماسبيرو',
                    style: TextStyle(
                      fontSize: 15.0
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
