import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../walk_through/walk_through.dart';

class ConfirmMail extends StatelessWidget {
  var Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(top: 40.0),
                width: 400.0,
                  height: 400.0,
                  child:
                  SvgPicture.asset('assets/Art/undraw_completing_re_i7ap.svg'),

              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                textAlign: TextAlign.center,
                'تأكيد البريد الألكترونى',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'لقد ارسلنا رمز التأكيد للبريد الألكترونى. برجاء إدخاله للتأكيد',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              // Row دا بتاع الكود اللى هيجي علشان تدخله
              Form(
                key: Formkey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                          validator: (value)
                          {
                            if(value?.isEmpty ?? true )
                            {
                              return 'برجاء ادخال الرمز' ;
                            }
                            return null ;
                          },
                        onSaved: (pin1){},
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        validator: (value)
                        {
                          if(value?.isEmpty ?? true )
                          {
                            return 'برجاء ادخال الرمز' ;
                          }
                          return null ;
                        },
                        onSaved: (pin2){},
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        validator: (value)
                        {
                          if(value?.isEmpty ?? true )
                          {
                            return 'برجاء ادخال الرمز' ;
                          }
                          return null ;
                        },
                        onSaved: (pin3){},
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        validator: (value)
                        {
                          if(value?.isEmpty ?? true )
                          {
                            return 'برجاء ادخال الرمز' ;
                          }
                          return null ;
                        },
                        onSaved: (pin4){},
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),

                  ],
                ),
              ),
              //
              Container(
                width: 50.0,
                padding: EdgeInsets.only(top: 40.0,left: 50,right: 50),
                child: FloatingActionButton.extended(
                  onPressed:(){
                    if(Formkey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WalkThrough()));
                    }
                  },
                  label:Text('تأكيد') ,
                  backgroundColor: Colors.blueAccent,),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ألم تستلم الرمز ؟',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(onPressed: (){},
                      child:Text(
                        'إعاده ارسال الرمز',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ), ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
