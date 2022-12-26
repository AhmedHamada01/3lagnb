import 'package:alagnb_project/account_profile/account_screen.dart';
import 'package:alagnb_project/home/RoadServices.dart';
import 'package:alagnb_project/home/tabes/add_road.dart';
import 'package:alagnb_project/home/tabes/add_road_2.dart';
import 'package:alagnb_project/home/tabes/add_road_3.dart';
import 'package:alagnb_project/home/tabes/add_road_4.dart';
import 'package:alagnb_project/home/tabes/needed_road.dart';
import 'package:alagnb_project/home/tabes/request_road.dart';
import 'package:alagnb_project/home/tabes/search_road.dart';
import 'package:alagnb_project/metro_services/metro_services_screen.dart';
import 'package:alagnb_project/train_services/train_services_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 static int selectedtab=0;
  List<Widget> tabs =[RoadServices(),MetroServicesScreen(),TrainServicesScreen(),AccountScreen()];

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
              onTabChange: (currnetindex){
                selectedtab=currnetindex;
                setState(() {});

              },
              selectedIndex: selectedtab,
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
                  text: 'الملف الشخصى',
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
        body:tabs[selectedtab]
      ),
    );
  }
}

