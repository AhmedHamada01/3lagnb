import 'package:alagnb_project/home/tabes/add_road.dart';
import 'package:alagnb_project/home/tabes/add_road_2.dart';
import 'package:alagnb_project/home/tabes/add_road_3.dart';
import 'package:alagnb_project/home/tabes/add_road_4.dart';
import 'package:alagnb_project/home/tabes/needed_road.dart';
import 'package:alagnb_project/home/tabes/request_road.dart';
import 'package:alagnb_project/home/tabes/search_road.dart';
import 'package:alagnb_project/metro_services/tabes/metro_important_locations.dart';
import 'package:alagnb_project/metro_services/tabes/metro_map.dart';
import 'package:alagnb_project/metro_services/tabes/metro_station_nearest.dart';
import 'package:alagnb_project/metro_services/tabes/metro_ticket_calculation.dart';
import 'package:alagnb_project/metro_services/tabes/metro_trip_track.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'account_screen.dart';


class ProfileDetails extends StatefulWidget {

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar:
        Container(
          color: Colors.white70,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
            child: const  GNav(
              gap: 0,
              activeColor: Colors.white,
              backgroundColor: Colors.white70,
              color: Colors.black,
              tabBackgroundColor: Colors.blue,
              textStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(22),
              tabs: const [
                GButton(
                  icon:Icons.home ,
                  text: 'الرئيسيه',
                ),
                GButton(
                  icon: Icons.menu,
                  text: 'خدمات المترو',

                ),
                GButton(
                  icon: Icons.train,
                  text: 'القطارات',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Hamada',
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
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
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'تعديل الحساب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/person.png'),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      //دا علشان الكلمه متبقاش لازقه ف ال countainer
                      contentPadding: EdgeInsets.only(right: 10),
                      labelText: 'البريد الالكترونى ' ,
                      counterStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
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
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      //دا علشان الكلمه متبقاش لازقه ف ال countainer
                      contentPadding: EdgeInsets.only(right: 10),
                      labelText: 'اسم المستخدم ' ,
                      counterStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
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
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      //دا علشان الكلمه متبقاش لازقه ف ال countainer
                      contentPadding: EdgeInsets.only(right: 10),
                      labelText: 'الاسم ' ,
                      counterStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
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
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      //دا علشان الكلمه متبقاش لازقه ف ال countainer
                      contentPadding: EdgeInsets.only(right: 10),
                      labelText: 'رقم الهاتف ' ,
                      counterStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
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
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      //دا علشان الكلمه متبقاش لازقه ف ال countainer
                      contentPadding: EdgeInsets.only(right: 10),
                      labelText: 'كلمه المرور ' ,
                      counterStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 130.0,
                      height: 50.0,
                      child: FloatingActionButton.extended(
                        label: Text('حفظ' ,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // <-- Text
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    Container(
                      width: 130.0,
                      height: 50.0,
                      child: FloatingActionButton.extended(
                        label: Text(
                          'حذف حسابك',
                          style: TextStyle(
                            color: Colors.red
                          ),
                        ), // <-- Text
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
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
