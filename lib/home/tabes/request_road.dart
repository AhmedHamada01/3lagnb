import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RequestRoad extends StatelessWidget {

  var Formkey = GlobalKey<FormState>();

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
        body: Form(
          key: Formkey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0 , right: 25.0 ),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 50.0,
                      height: 30.0,
                      margin: EdgeInsets.only(top: 30.0,left: 260.0),
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
                    height: 30.0,
                  ),
                  Text(
                    'طلب اضافه طريق',
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
                    'اكتب اسم المكان اللى عاوز تعرف الطريق منه '
                        'و المكان اللى عايز تروحه و احنا هنحاول ندور عليه'
                        'و نضيف مواصلاته فى اقرب وقت ',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue[50],
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:BorderSide(
                              color: Colors.black26,
                              width: 1.0
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:BorderSide(
                              color: Colors.black26,
                              width: 1.0
                          ),
                        ),
                        errorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0
                          ),
                        ),
                        focusedErrorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0
                          ),
                        ),
                        contentPadding: EdgeInsets.only(right: 10),
                        hintText: 'اسم منطقتك او المكان اللى هتتحرك منه' ,
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      onChanged: (String value){},
                      validator: (value)
                      {
                        if(value?.isEmpty ?? true )
                        {
                          return 'اسم المنطقه لا يجب ان يكون فارغا' ;
                        }
                        return null ;
                      }
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue[50],
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:BorderSide(
                              color: Colors.black26,
                              width: 1.0
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:BorderSide(
                              color: Colors.black26,
                              width: 1.0
                          ),
                        ),
                        errorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0
                          ),
                        ),
                        focusedErrorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0
                          ),
                        ),
                        contentPadding: EdgeInsets.only(right: 10),
                        hintText: 'اسم المنطقه اللى هتروحها ' ,
                        counterStyle: TextStyle(
                            color: Colors.white
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      onChanged: (String value){},
                      validator: (value)
                      {
                        if(value?.isEmpty ?? true )
                        {
                          return 'اسم المنطقه لا يجب ان يكون فارغا' ;
                        }
                        return null ;
                      }
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: 110.0,
                    height: 50.0,
                    child: FloatingActionButton.extended(
                      label: Text('طلب اضافه'), // <-- Text
                      backgroundColor: Colors.blue,
                      onPressed: () {
                        if(Formkey.currentState!.validate()){}
                      },
                    ),
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
