import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:dotted_border/dotted_border.dart';

class RoadDetails1 extends StatelessWidget {
  const RoadDetails1({Key? key}) : super(key: key);

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
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0,right: 20.0,left: 40.0),
          child: Column(
            children: [
              Text(
                'مواصلات روكسى من محطه مترو الملك الصالح ',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0
                  ),
                  color: Colors.white70
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Image.asset(
                      'assets/Mask Group 9.png',
                      width: 30.0,
                      height: 30.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.blue,
                        width: 1.0
                    ),
                    color: Colors.white70
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    SvgPicture.asset(
                      'assets/Icons/van.svg',
                      width: 30.0,
                      height: 30.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              SvgPicture.asset(
                'assets/Icons/distance.svg',
                width: 40.0,
                height: 40.0,

              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.blue,
                        width: 1.0
                    ),
                    color: Colors.white70
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Image.asset(
                      'assets/Mask Group 9.png',
                      width: 30.0,
                      height: 30.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.blue,
                        width: 1.0
                    ),
                    color: Colors.white70
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    SvgPicture.asset(
                      'assets/Icons/van.svg',
                      width: 30.0,
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
