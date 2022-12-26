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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
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
                  height: 20.0,
                ),
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
