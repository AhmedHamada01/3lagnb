import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../confirm_mail/confirm_mail.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
            padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 70.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 SvgPicture.asset('assets/logo - Copy.svg',
                  color: Colors.white,
                  height: 80.0,
                  width: 80.0,
                ),
                 SizedBox(
                   height: 20.0,
                 ),
                 Text(
                  'إنشاء حساب جديد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
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
                      labelText: 'الأسم',
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
                      labelText: 'اسم المستخدم',
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
                      labelText: 'كلمه المرور ',
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
                      labelText: 'تأكيد كلمه المرور',
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
                      labelText: 'رقم الهاتف',
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
                   height: 40.0,
                 ),
                 Container(
                  width: 10.0,
                  height: 40.0,
                  child: FloatingActionButton.extended(
                    label: Text('إنشاء حساب'), // <-- Text
                    backgroundColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmMail()));
                    },
                  ),
                ),
                 SizedBox(
                   height: 9.0,
                 ),
                 Row(
                   children: [
                     Text(
                      'بضغكط على إنشاء الحساب . انت توافق على',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                ),
                     TextButton(onPressed: (){},
                     child:
                        Text(
                       'الشروط و السياسات',
                       style: TextStyle(
                         fontSize: 13.0,
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
    );
  }
}
