import 'package:alagnb_project/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../metro_services/metro_services_screen.dart';
import '../../road_details/road_details_1.dart';

class SearchRoad extends StatefulWidget {
  const SearchRoad({Key? key}) : super(key: key);

  @override
  State<SearchRoad> createState() => _SearchRoadState();
}

class _SearchRoadState extends State<SearchRoad> {
 // int currnetindex = ModalRoute.of(context).settings.arguments as HomeScreen;
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
            child:   GNav(
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
              tabs:  [
                GButton(
                  icon:Icons.home ,
                  text: 'الرئيسيه',
                ),
                GButton(
                  onPressed: (index){
                   Navigator.pop(context);
                  // HomeScreen().
                  },
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0 , right: 25.0 , top: 60.0),
            child: Column(
              children: [
                Text(
                  'أبحث عن طريق',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'اعرف ازاى تروح اى مكان فى القاهره او الجيزه من بين اكثر من 350 ألف طريق',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 10),
                      hintText: 'اسم منطقتك او المكان اللى هتتحرك منه' ,
                      counterStyle: TextStyle(
                          color: Colors.white
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black54,
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
                    color: Colors.blue[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
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
                  ),

                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: 110.0,
                  height: 50.0,
                  child: FloatingActionButton.extended(
                    label: Text('بحث '), // <-- Text
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RoadDetails1()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}