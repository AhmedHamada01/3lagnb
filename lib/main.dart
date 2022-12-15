import 'package:alagnb_project/road_details/road_details_1.dart';
import 'package:alagnb_project/road_details/road_details_2.dart';
import 'package:alagnb_project/splash/splash_screen.dart';
import 'package:alagnb_project/train_services/train_services_screen.dart';
import 'package:alagnb_project/walk_through/walk_through.dart';
import 'package:alagnb_project/who_us/who_us_screen.dart';
import 'package:flutter/material.dart';

import 'Test/test.dart';
import 'account_profile/account_screen.dart';
import 'account_profile/profile_details.dart';
import 'confirm_mail/confirm_mail.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'forget_password/forget_password1.dart';
import 'forget_password/forget_password2.dart';
import 'home/home_screen.dart';
import 'home/tabes/add_road_4.dart';
import 'home/tabes/request_road.dart';
import 'home/tabes/search_road.dart';
import 'metro_services/metro_services_screen.dart';
import 'splash/splashScreen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SplashScreen2(),
      ),
    );
  }
}



