import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MetroTicketCalculation extends StatefulWidget {
  const MetroTicketCalculation({Key? key}) : super(key: key);

  @override
  State<MetroTicketCalculation> createState() => _MetroTicketCalculationState();
}

class _MetroTicketCalculationState extends State<MetroTicketCalculation> {

  int i = 1 ;
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
                  'احسب ثمن التذكره',
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
                            hintText: 'من - محطه البدايه ' ,
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

                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
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
                            hintText: 'من - محطه البدايه ' ,
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

                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'عدد المحطات',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('10',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'عدد التذاكر',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80.0,
                    ),
                    Container(
                      width: 50.0,
                      height: 30.0,
                      child: FloatingActionButton.extended(
                        label: Text('' ,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // <-- Text
                        backgroundColor: Colors.blue,
                        icon:Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                              Icons.add ,
                            size: 35.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            i++ ;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 70.0,
                      height: 100.0,
                      padding: EdgeInsets.only(top: 18.0),
                      color: Colors.transparent,
                      child: Text(
                        '$i',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ) ,

                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 50.0,
                      height: 30.0,
                      child: FloatingActionButton.extended(
                        label: Text('' ,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // <-- Text
                        backgroundColor: Colors.blue,
                        icon:Padding(
                          padding: const EdgeInsets.only(bottom: 30.0,right: 10.0),
                          child: Icon(
                              Icons.minimize_rounded ,
                            size: 50.0,
                          ),
                        ),
                        onPressed: () {
                          if(i<= 1){
                            i = 1;
                          }else {
                            setState(() {
                              i--;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  'جنيه 21',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
