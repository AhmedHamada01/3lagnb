import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'forget_password2.dart';

class ForgetPassword1 extends StatelessWidget {
  var Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: Formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(top: 50.0),
                width: 350.0,
                height: 350.0,
                child:
                //Image.asset('assets/Art/astro.png',),
                Image.asset(
                  'assets/Art/forgotpassword.png',
                  width: 100.0,
                  height: 100.0,
                  //color: Colors.white,
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'إعاده تعيين كلمه المرور',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'برجاء إدخال البريد الألكترونى',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                    ),
                    labelText: 'البريد الألكترونى',
                  ),
                  onChanged: (String value){},
                    validator: (value)
                    {
                      if(value?.isEmpty ?? true )
                      {
                        return 'البريد الالكترونى فارغ' ;
                      }
                      if (value == null || !value.contains("@")){
                        return 'البريد الالكترونى يجب ان يحتوى على  @';
                      }
                      if(value == null || !value.contains(".com")){
                        return 'البريد الالكترونى يجب ان يحتوى على .com';
                      }
                      return null ;
                    }
                ),
              ),
              Container(
                width: 50.0,
                padding: EdgeInsets.only(top:50.0 ,left: 70,right: 70),
                child: FloatingActionButton.extended(
                  onPressed:(){
                    if(Formkey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgetpassword2()));

                    }
                  },
                  label:Text('إرسال الرمز') ,
                  backgroundColor: Colors.blueAccent,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
