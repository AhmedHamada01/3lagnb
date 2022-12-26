import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';

class RoadDetails1 extends StatelessWidget {
  const RoadDetails1({Key? key}) : super(key: key);

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
        body: Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 40.0),
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
                height: 15.0,
              ),
              Text(
                'من نحن ',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
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
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'اركب مترو حلوان - المرج و انزل عند محطه مترو سراي القبه',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold
                      ),
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
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'اركب ميكروباص عبود - روكسي و انزل عند روكسى',
                      style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              SvgPicture.asset(
                'assets/Icons/road.svg',
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
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'اركب مترو حلوان - المرج و انزل عند محطه مترو حلميه الزيتون',
                      style: TextStyle(
                          fontSize: 9.0,
                          fontWeight: FontWeight.bold
                      ),
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
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'اركب ميكروباص المطريه - روكسي - الطيران و انزل عند روكسى',
                      style: TextStyle(
                          fontSize: 9.0,
                          fontWeight: FontWeight.bold
                      ),
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
