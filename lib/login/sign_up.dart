import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../confirm_mail/confirm_mail.dart';

class SignUp extends StatelessWidget {

  var Formkey = GlobalKey<FormState>();
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
            padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 100.0),
            child: Form(
              key: Formkey,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
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
                     TextFormField(
                       style: TextStyle(
                           color: Colors.white
                       ),
                       keyboardType: TextInputType.name,
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
                         labelText: 'الأسم',
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
                             return 'الاسم فارغ' ;
                           }
                           return null ;
                         }
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
                         labelText: 'اسم المستخدم',
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
                             return 'الاسم فارغ' ;
                           }
                           return null ;
                         }
                     ),
                     TextFormField(
                       obscureText: true,
                       style: TextStyle(
                           color: Colors.white
                       ),
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
                         labelText: 'كلمه المرور ',
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
                             return 'كلمه المرور فارغه' ;
                           }
                           if (value!.length < 5){
                             return 'كلمه المرور قصيره';
                           }
                           return null ;
                         }
                     ),
                     TextFormField(
                       obscureText: true,
                       style: TextStyle(
                           color: Colors.white
                       ),
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
                         labelText: 'تأكيد كلمه المرور',
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
                             return 'كلمه المرور فارغه' ;
                           }
                           if (value!.length < 5){
                             return 'كلمه المرور قصيره';
                           }
                           return null ;
                         }
                     ),
                     TextFormField(
                       style: TextStyle(
                           color: Colors.white
                       ),
                       keyboardType: TextInputType.number,
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
                         labelText: 'رقم الهاتف',
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
                             return 'رقم الهاتف فارغ' ;
                           }
                           if (value!.length < 10 ){
                             return 'رقم الهاتف غير صحيح';
                           }
                           if (value.length > 11 ){
                             return 'رقم الهاتف غير صحيح';
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
                        label: Text('إنشاء حساب'), // <-- Text
                        backgroundColor: Colors.blueAccent,
                        onPressed: () {
                          if(Formkey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmMail()));

                          }
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
        ),
      ),
    );
  }
}
