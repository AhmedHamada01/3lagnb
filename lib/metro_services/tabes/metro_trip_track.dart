import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class MetroTripTrack extends StatelessWidget {
  const MetroTripTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
                  color: Colors.black,
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
