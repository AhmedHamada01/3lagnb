import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/login_screen.dart';

class Forgetpassword2 extends StatelessWidget {

  var Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: Formkey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
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
                      validator: (value)
                      {
                        if(value?.isEmpty ?? true )
                        {
                          return 'رمز التأكيد فارغ' ;
                        }
                        if (value!.length < 4){
                          return 'رمز التأكيد غير صحيح';
                        }
                        return null ;
                      }

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
                      validator: (value)
                      {
                        if(value?.isEmpty ?? true )
                        {
                          return 'كلمه المرور فارغه' ;
                        }
                        if (value!.length < 5){
                          return 'كلمه المرور قصيره';
                        }
                        return null ;
                      }
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
                      validator: (value)
                      {
                        if(value?.isEmpty ?? true )
                        {
                          return 'كلمه المرور فارغه' ;
                        }
                        if (value!.length < 5){
                          return 'كلمه المرور قصيره';
                        }
                        return null ;
                      }
                  ),
                ),
                Container(
                  width: 50.0,
                  padding: EdgeInsets.only(top: 30.0, left: 70, right: 70),
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      if(Formkey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

                      }
                    },
                    label: Text('تأكيد'),
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
