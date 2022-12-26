import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:dotted_line/dotted_line.dart';

class NeededRoad extends StatelessWidget {
  const NeededRoad({Key? key}) : super(key: key);

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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0 , right: 25.0),
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
                      margin: EdgeInsets.only(left: 260.0),
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
                    height: 20.0,
                  ),
                  Text(
                    'الطرق المطلوبه',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'الاماكن المعروضه فى هذه الصفحه تم طلبها من'
                        'قبل زوار الموقع . اضغط على اسم المكان للبداء'
                        ' فى ادخال العناوين',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder:(context, index) => SearchNeeded(index),
                  ),
                  TextButton(onPressed: (){}, child:
                  Text(
                    'عرض المزيد>>',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    ),
                  )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget SearchNeeded (int index) => Column(
    children: [
      InkWell(
        onTap: (){},
        child: Row(
          children: [
            Text(
              '-',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'الطريق من المرج إلى ميدان عبد المنعم رياض',
            ),
            SizedBox(
              width: 20.0,
            ),
            Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      DottedLine(),
      SizedBox(
        height: 20.0,
      ),
    ],

  );
}
