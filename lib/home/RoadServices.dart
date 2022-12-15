import 'package:alagnb_project/home/tabes/add_road.dart';
import 'package:alagnb_project/home/tabes/needed_road.dart';
import 'package:alagnb_project/home/tabes/request_road.dart';
import 'package:alagnb_project/home/tabes/search_road.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoadServices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'خدمات المواصلات',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchRoad()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.0,top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.blue,
                        width: 2.0
                    ),
                    color: Colors.transparent,
                  ),
                  child: Column(
                      children :[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,left: 5.0),
                          child: Image.asset('assets/Art/astro.png',
                            width: 140.0,
                            height: 130.0,

                          ),
                        ),
                        Text(
                          'ابحث عن طريق',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700

                          ),
                        ),
                      ]

                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestRoad()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10.0,top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.blue,
                        width: 2.0
                    ),
                    color: Colors.transparent,
                  ),
                  child: Column(
                      children :[
                        SvgPicture.asset(
                          'assets/Art/Wishes-rafiki.svg',
                          width: 140.0,
                          height: 140.0,
                        ),
                        Text(
                          'طلب اضافه طريق',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700

                          ),
                        ),
                      ]

                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddRoad1()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.0,top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.blue,
                        width: 2.0
                    ),
                    color: Colors.transparent,
                  ),
                  child: Column(
                      children :[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,left: 5.0),
                          child: SvgPicture.asset(
                            'assets/Art/undraw_delivery_address_re_cjca.svg',
                            width: 110.0,
                            height: 130.0,
                          ),
                        ),
                        Text(
                          'اضافه مواصله',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700

                          ),
                        ),
                      ]

                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NeededRoad()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10.0,top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.blue,
                        width: 2.0
                    ),
                    color: Colors.transparent,
                  ),
                  child: Column(
                      children :[
                        SvgPicture.asset(
                          'assets/Art/Current location-pana.svg',
                          width: 140.0,
                          height: 140.0,
                        ),
                        Text(
                          'الطرق المطلوبه',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700

                          ),
                        ),
                      ]

                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
