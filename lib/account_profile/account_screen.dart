import 'package:alagnb_project/account_profile/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/login_screen.dart';
import '../who_us/who_us_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(right: 30.0, left: 30.0, top: 30.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                width: double.infinity,
                height: 480.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Text(
                        'User',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'User12@',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 25.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileDetails()));
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Icons/Mask Group 11.png',
                                width: 25.0,
                                height: 25.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'الملف الشخصى',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 100.0,
                              ),
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 25.0),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/Icons/svgexport-6 (5).svg',
                                width: 25.0,
                                height: 25.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'إعدادات التطبيق',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 90.0,
                              ),
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 25.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoUsScreen()));
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/Icons/svgexport-6 (6).svg',
                                width: 25.0,
                                height: 25.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'من نحن ؟',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 132.0,
                              ),
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 25.0),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Icons/Mask Group 14.png',
                                width: 25.0,
                                height: 25.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'الطرق المضافه بواسطتك',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 37.0,
                              ),
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 25.0),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Icons/Mask Group 15.png',
                                width: 25.0,
                                height: 25.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'تواصل معنا',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 110.0,
                              ),
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 25.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Icons/Mask Group 17.png',
                                width: 25.0,
                                height: 25.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'تسجيل الخروج',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 90.0,
                              ),
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
