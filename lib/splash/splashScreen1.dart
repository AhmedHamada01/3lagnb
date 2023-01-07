

import 'package:alagnb_project/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen2()));
    });
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/mainsquare.png',
                width:double.infinity ,
                height: 730,
                fit: BoxFit.cover,
              ),
            ]
        )
    );
  }
}
