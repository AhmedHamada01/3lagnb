import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/login_screen.dart';

class Forgetpassword2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50.0),
              width: 350.0,
              height: 320.0,
              child:
              Image.asset(
                'assets/Art/forgotpassword.png',
                width: 100.0,
                height: 100.0,
                //color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'إعاده تعيين كلمه المرور',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0,),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(),
                  labelText: 'رمز التأكيد',
                ),
                onChanged: (String value) {},
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20.0, right: 20.0,),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelStyle: TextStyle(),
                  labelText: 'كلمه المرور الجديده',
                ),
                onChanged: (String value) {},
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20.0, right: 20.0,),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelStyle: TextStyle(),
                  labelText: 'تأكيد كلمه المرور',
                ),
                onChanged: (String value) {},
              ),
            ),
            Container(
              width: 50.0,
              padding: EdgeInsets.only(top: 30.0, left: 70, right: 70),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                label: Text('تأكيد'),
                backgroundColor: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
