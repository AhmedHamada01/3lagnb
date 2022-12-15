import 'package:alagnb_project/train_services/tabes/train_times.dart';
import 'package:alagnb_project/train_services/tabes/train_times_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrainServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'خدمات القطارات',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrainTimes()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0, top: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.blue, width: 2.0),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Image.asset(
                          'assets/woman.png',
                          width: 140.0,
                          height: 130.0,
                        ),
                      ),
                      Text(
                        'مواعيد القطارات',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w700),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrainTimes2()));
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
                        ' ثمن التذكره',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w700),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
