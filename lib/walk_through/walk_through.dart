import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class WalkThrough extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image(image: AssetImage('assets/Train_Station_Cairo_Metro_Line_3.png'),
                height: 400.0,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'سهل و سريع',
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0 , top: 15.0),
              child: Text(
                'على جمب عليه اكثر من 350 ألف عنوان تقدر '
                    'تبحث بينهم بسهوله تامه و من غير اي عناء كل '
                    'اللى عليك انك تكتب المكان اللى انت فيه '
                    'و المكان اللى هتروحه . و على جمب هيقولك كل '
                    'الطرق الممكنه ' ,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500 ,

                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            FloatingActionButton.extended(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }
            ,label: Text(
                    'ابدأ الرحله',
                ),
              backgroundColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
