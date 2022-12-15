import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MetroImportantLocation extends StatelessWidget {
  const MetroImportantLocation({Key? key}) : super(key: key);

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
                  'أهم الاماكن',
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
                  padding: const EdgeInsets.only(left: 25.0 , right: 30.0 ),
                  child: Row(
                    children: [
                      Container(
                        width: 270.0,
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
                            hintText: 'اختر محطه ' ,
                            counterStyle: TextStyle(
                              color: Colors.white,

                            ),
                            hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 13.0,
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

                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  width: 130.0,
                  height: 50.0,
                  child: FloatingActionButton.extended(
                    label: Text('بحث' ,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // <-- Text
                    backgroundColor: Colors.blue,

                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  height: 40.0,
                  color: Colors.white,

                  child: Text(
                    'اهم الاماكن المحيطه بمترو الدقى',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    Image.asset(
                      'assets/safara.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Text(
                          'السفاره الأيرانيه ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'ميدان المساحه الدقى . الجيزه 12',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    Image.asset(
                      'assets/safara.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Text(
                          'السفاره الأيرانيه ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'ميدان المساحه الدقى . الجيزه 12',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    Image.asset(
                      'assets/safara.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Text(
                          'السفاره الأيرانيه ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'ميدان المساحه الدقى . الجيزه 12',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
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
