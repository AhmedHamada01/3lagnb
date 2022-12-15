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
        bottomNavigationBar:
        Container(
          color: Colors.white70,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
            child: const  GNav(
              gap: 0,
              activeColor: Colors.white,
              backgroundColor: Colors.white70,
              color: Colors.black,
              tabBackgroundColor: Colors.blue,
              textStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(22),
              tabs: const [
                GButton(
                  icon:Icons.home ,
                  text: 'الرئيسيه',
                ),
                GButton(
                  icon: Icons.menu,
                  text: 'خدمات المترو',

                ),
                GButton(
                  icon: Icons.train,
                  text: 'القطارات',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Hamada',
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
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
          padding: const EdgeInsets.only(top: 40.0,right: 20.0,left: 30.0),
          child: Column(
            children: [
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
