import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class WhoUsScreen extends StatelessWidget {
  const WhoUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                  Text(
                    'من نحن ',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    margin: EdgeInsets.only(left: 15.0,),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topRight:Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'ما هو تطبيق على جمب ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'يقدم موقع على جمب العديد من الخدمات فى مجال النقل الداخلى فى '
                        'جمهوريه مصر العربيه . بدايه من الاستعلام عن طريق و كيفيه الوصول إلى '
                        'الاماكن المجاورهلهذا المكان و المطاعم و الكافيهات بالقرب منه . و العديد من'
                        'الخدمات الاخرى التى نعمل على اضافتها حديثا',
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    margin: EdgeInsets.only(left: 15.0,),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight:Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'المشكله ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'من الصعوبات التى تواجه القادمون الجدد إلى القاهره او اى مدينه جديده . هى'
                        'امكانيه التحرك بين المدينه بسهوله دون عناء . و معرفه الاماكن المجاوره بكل'
                        'منطقه بطريقه مباشره و بالرغم من توفر بعض المواقع التى تقدم خدمات'
                        'شبيه الا انها ليست بالسهوله الكافيه للحصول على البيانات . او لا تحتوى'
                        'على معلومات كافيه لذلك كان علينا ولابد ان ننشاء موقع على جنب دوت كوم',
                    textAlign: TextAlign.start,

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    margin: EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight:Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'الهدف ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'توفير طريقه سهله للإستعلام عن الاماكن و كيفيه الوصول إليه باكثر من'
                        'طريقه بإستخدام وسائل مواصلات مختلفه (مترو , ميكروباص , نقل عام , اتوبيس مكيف)'
                        'و الاماكن المحيطه بكل منطقه من كافيهات و مطاعم و اماكن خروج...'
                        'نعمل قريبا على اضافه الكثير من المميزات التى بدورها ستسهل عليك كثيرا استخدام الموقع',
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
