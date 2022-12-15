import 'package:alagnb_project/forget_password/forget_password1.dart';
import 'package:alagnb_project/login/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../componants/componants.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

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
          child: Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left:35.0,right: 35.0,top: 130.0),
              child:
                 Column(
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
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom:BorderSide(
                            width: 2.0,
                            color: Colors.white70
                        )),
                        color: Colors.transparent,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'البريد الالكترونى',
                          counterStyle: TextStyle(
                            color: Colors.white
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        onChanged: (String value){},
                      ),

                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom:BorderSide(
                            width: 2.0,
                            color: Colors.white70
                        )),
                        color: Colors.transparent,
                      ),
                      child: TextFormField(
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'كلمه المرور',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        onChanged: (String value){},
                      ),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0,top: 10.0),
                        child: Text(
                          'نسيت كلمه المرور؟',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
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
