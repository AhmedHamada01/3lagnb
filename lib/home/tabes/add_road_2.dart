import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'add_road_3.dart';

class AddRoad2 extends StatelessWidget {
  const AddRoad2({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                  height: 20.0,
                ),
                Text(
                  'إضافه مواصله',
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
                  'برجاء كتابه المكان كما هو موضح بالأسفل و دى '
                      'هتكون بدايه المواصله إلى و دى المكان اللى '
                      'المفروض يوصله ',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                      hintText: 'من - المكان اللى هتتحرك منه ' ,
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
                      hintText: 'إلى - المكان اللى هتوصل له ' ,
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
                Row(
                  children: [
                    Container(
                      width: 130.0,
                      height: 50.0,
                      child: FloatingActionButton.extended(
                        label: Text('توصف الطريق' ,
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // <-- Text
                        backgroundColor: Colors.white,

                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    Container(
                      width: 130.0,
                      height: 50.0,
                      child: FloatingActionButton.extended(
                        label: Text('هتملى الفورم'), // <-- Text
                        backgroundColor: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 90.0,
                      height: 4.0 ,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'الطريق رقم (1)',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 90.0,
                      height: 4.0 ,
                      color: Colors.black,
                    ),

                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 80.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                  ),
                  child: Row(

                    children: [
                      SvgPicture.asset(
                        'assets/Icons/bus-stop.svg',
                        width: 50.0,
                        height: 50.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'اركب',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'نوع المواصله',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(Icons.keyboard_arrow_up_outlined,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 150.0,
                  height: 50.0,
                  child: FloatingActionButton.extended(
                    icon: Icon(Icons.arrow_back),
                    label: Text('الخطوه الجايه' ,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // <-- Text
                    backgroundColor: Colors.blue,

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddRoad3()));
                    },
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
