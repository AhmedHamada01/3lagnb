import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../componants/componants.dart';
import '../login/login_screen.dart';
import '../login/sign_up.dart';

class SplashScreen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/square.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0,left: 32.0,right: 32.0),
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //HexColor('#4267B2'),
                SvgPicture.asset('assets/logo - Copy.svg',
                color: Colors.white,
                  height: 100.0,
                  width: 100.0,
                ),
                SizedBox(
                  height: 100.0,
                ),
                Text(
                  'على جمب دوت كوم ',
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'دليلك للمواصلات فى القاهره الكبرى ',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                    onPressed: (){},
                  icon: SvgPicture.asset(
                    'assets/Icons/facebook.svg',
                    width: 28.0,
                    height: 28.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: HexColor('#4267B2'),
                    padding: EdgeInsets.only(left: 90.0,right: 90.0,top: 5.0,bottom: 5.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                  ),
                  label: Text(
                    'Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                    ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: (){},
                  icon: SvgPicture.asset(
                    'assets/Icons/google.svg',
                    width: 28.0,
                    height: 28.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.only(left: 95.0,right: 95.0,top: 5.0,bottom: 5.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                  ),
                  label: Text(
                    'Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  height: 40.0,
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                    child:Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Don\'t have an account ?  ',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SignUp()));
                }, child:
                Text(
                  'Create account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
                ),
              ],
            ),
          ),
        ),
    );
  }
}
