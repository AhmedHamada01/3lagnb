import 'package:alagnb_project/forget_password/forget_password1.dart';
import 'package:alagnb_project/login/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../componants/componants.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  var Formkey = GlobalKey<FormState>();
  String mark = '\@' ;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // دي علشان لما تفتح الكيبورد و يجيبلك ايرور ف عدد ال pixel
        resizeToAvoidBottomInset : false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/square.jpeg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:35.0,right: 35.0,top: 120.0),
            child:
               Form(
                 key:Formkey ,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/logo - Copy.svg',
                      color: Colors.white,
                      height: 100.0,
                      width: 100.0,
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      'تسجيل الدخول',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.white70,
                            width: 1.0
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:BorderSide(
                              color: Colors.white70,
                              width: 1.0
                          ),
                        ),
                        errorBorder:UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 1.0
                          ),
                        ),
                        focusedErrorBorder:UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 1.0
                          ),
                        ),
                        labelText: 'البريد الالكترونى',
                        counterStyle: TextStyle(
                          color: Colors.white
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
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
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:BorderSide(
                              color: Colors.white70,
                              width: 1.0
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:BorderSide(
                              color: Colors.white70,
                              width: 1.0
                          ),
                        ),
                        errorBorder:UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0
                          ),
                        ),
                        focusedErrorBorder:UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0
                          ),
                        ),
                        labelText: 'كلمه المرور',
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      onChanged: (String value){},
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
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: 10.0,
                      height: 40.0,
                      child: FloatingActionButton.extended(
                        label: Text('دخول'), // <-- Text
                        backgroundColor: Colors.blueAccent,
                        onPressed: () {
                          if(Formkey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword1()));
                    }, child:
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: Text(
                        'نسيت كلمه المرور ؟',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ليس لديك حساب ؟',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,

                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()) );
                        }, child:
                        Text(
                          'سجل الان',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        )
                        ),
                      ],
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
