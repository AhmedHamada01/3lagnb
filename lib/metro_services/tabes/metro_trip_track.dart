import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MetroTripTrack extends StatelessWidget {
  const MetroTripTrack({Key? key}) : super(key: key);

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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Text(
                  'مسار رحله المترو',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0 , right: 20.0 ),
                  child: Row(
                    children: [
                      Container(
                        width: 240.0,
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
                              fontWeight: FontWeight.bold
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(right: 10,top: 10.0),
                            hintText: 'من - محطه البدايه (المرج الجديده)' ,
                            counterStyle: TextStyle(
                                color: Colors.white,

                            ),
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 11.0
                            ),
                            suffixIcon:Icon(
                                Icons.keyboard_arrow_down_sharp,
                              color: Colors.black,
                              size: 30.0,
                            ) ,
                          ),
                          onChanged: (String value){},
                        ),

                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      SvgPicture.asset(
                          'assets/Icons/replace.svg',
                        width: 30.0,
                        height: 30.0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0 , right: 20.0 ),
                  child: Row(
                    children: [
                      Container(
                        width: 240.0,
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
                              fontWeight: FontWeight.bold
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(right: 10,top: 10.0),
                            hintText: 'إلى محطه الوصول (سانت تريزا)' ,
                            counterStyle: TextStyle(
                              color: Colors.white,

                            ),
                            hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 11.0
                            ),
                            suffixIcon:Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.black,
                              size: 30.0,
                            ) ,
                          ),
                          onChanged: (String value){},
                        ),

                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      SvgPicture.asset(
                        'assets/Icons/svgexport-6 (15).svg',
                        width: 30.0,
                        height: 30.0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 15.0,
                  color: Colors.blue[900],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0 , top: 15.0),
                  child: Text(
                    'اتجاه حلوان',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Image.asset(
                  'assets/Icons/Group 1821.png',
                  width: double.infinity,
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      'المرج الجديده',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 130.0,
                    ),
                    Text(
                      'الشهداء',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0 , top: 16.0),
                  child: Text(
                    'اتجاه شبرا الخيمه',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  'assets/Icons/Group 1821.png',
                  width: double.infinity,
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      'مسره',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                    ),
                    Text(
                      'سانت تريزا',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
