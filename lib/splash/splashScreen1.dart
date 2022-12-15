import 'package:alagnb_project/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class splashScreen1 extends StatefulWidget {
  const splashScreen1({Key? key}) : super(key: key);

  @override
  State<splashScreen1> createState() => _splashScreen1State();
}

class _splashScreen1State extends State<splashScreen1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        ),
        child: Image.asset(
          'assets/mainsquare.png',
          fit: BoxFit.cover,
        ),

      ),
    );

  }

}
