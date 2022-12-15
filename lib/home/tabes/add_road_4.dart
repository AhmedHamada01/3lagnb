import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AddRoad4 extends StatelessWidget {
  const AddRoad4({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0 , right: 25.0 , top: 60.0),
            child: Column(
              children: [
                Text(
                  'إضافه مواصله',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'برجاء كتابه المكان كما هو موضح بالأسفل و دى '
                      'هتكون بدايه المواصله إلى و دى المكان اللى '
                      'المفروض يوصله ',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue[50],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 10),
                      hintText: 'من - المكان اللى هتتحرك منه ' ,
                      counterStyle: TextStyle(
                          color: Colors.white
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
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
                      //دا علشان الكلمه متبقاش لازقه ف ال countainer
                      contentPadding: EdgeInsets.only(right: 10),
                      hintText: 'إلى - المكان اللى هتوصل له ' ,
                      counterStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 130.0,
                      height: 50.0,
                      child: FloatingActionButton.extended(
                        label: Text('توصف الطريق' ,
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // <-- Text
                        backgroundColor: Colors.white,

                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    Container(
                      width: 130.0,
                      height: 50.0,
                      child: FloatingActionButton.extended(
                        label: Text('هتملى الفورم'), // <-- Text
                        backgroundColor: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 90.0,
                      height: 4.0 ,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'الطريق رقم (1)',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 90.0,
                      height: 4.0 ,
                      color: Colors.black,
                    ),

                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 80.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'و انزل عند',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 40,
                          width: 160,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'المكان اللى هنزل فيه ',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 80.0,
                      height: 50.0,
                      child: FloatingActionButton.extended(
                        label: Text('حفظ' ,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // <-- Text
                        backgroundColor: Colors.blue,

                        onPressed: () {
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: FloatingActionButton.extended(
                        label: Text('اضف خطوه' ,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.white,// <-- Text
                        onPressed: () {
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 120.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: FloatingActionButton.extended(
                        label: Text('اضف طريق اخر ' ,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.white,// <-- Text
                        onPressed: () {
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
