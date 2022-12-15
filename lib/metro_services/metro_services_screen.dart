import 'package:alagnb_project/metro_services/tabes/metro_important_locations.dart';
import 'package:alagnb_project/metro_services/tabes/metro_map.dart';
import 'package:alagnb_project/metro_services/tabes/metro_station_nearest.dart';
import 'package:alagnb_project/metro_services/tabes/metro_ticket_calculation.dart';
import 'package:alagnb_project/metro_services/tabes/metro_trip_track.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MetroServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'خدمات مترو القاهره',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MetroTripTrack()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 17.0, top: 10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blue, width: 2.0),
                        color: Colors.transparent,
                      ),
                      child: Column(children: [
                        SvgPicture.asset(
                          'assets/Icons/road.svg',
                          width: 120.0,
                          height: 120.0,
                        ),
                        Text(
                          'مسار الرحله',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MetroStationNearest()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 17.0, top: 10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blue, width: 2.0),
                        color: Colors.transparent,
                      ),
                      child: Column(children: [
                        SvgPicture.asset(
                          'assets/Icons/svgexport-6 (2).svg',
                          width: 120.0,
                          height: 120.0,
                        ),
                        Text(
                          'اقرب محطه لمكانى',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MetroMap()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 17.0, top: 10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blue, width: 2.0),
                        color: Colors.transparent,
                      ),
                      child: Column(children: [
                        SvgPicture.asset(
                          'assets/Art/svgexport-10 (2).svg',
                          width: 120.0,
                          height: 120.0,
                        ),
                        Text(
                          'خريطه المترو',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MetroTicketCalculation()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 17.0, top: 10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blue, width: 2.0),
                        color: Colors.transparent,
                      ),
                      child: Column(children: [
                        SvgPicture.asset(
                          'assets/Icons/svgexport-6 (3).svg',
                          width: 120.0,
                          height: 120.0,
                        ),
                        Text(
                          'احسب ثمن التذكره',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MetroImportantLocation()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 17.0, top: 10.0),
                  padding: EdgeInsets.only(left: 1.0, right: 1.0, top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.blue, width: 2.0),
                    color: Colors.transparent,
                  ),
                  child: Column(children: [
                    SvgPicture.asset(
                      'assets/Art/undraw_best_place_re_lne9.svg',
                      width: 115.0,
                      height: 115.0,
                    ),
                    Text(
                      'اهم الاماكن',
                      style:
                          TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
