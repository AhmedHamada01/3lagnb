import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../confirm_mail/confirm_mail.dart';

class Test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/medical.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 70.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(
                        width: 2.0,

                    )),
                    color: Colors.transparent,
                  ),
                  child: TextFormField(
                    style: TextStyle(

                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      counterStyle: TextStyle(

                      ),
                      labelStyle: TextStyle(
                       color: Colors.black
                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(
                        width: 2.0,

                    )),
                    color: Colors.transparent,
                  ),
                  child: TextFormField(
                    style: TextStyle(

                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      counterStyle: TextStyle(

                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(
                        width: 2.0,

                    )),
                    color: Colors.transparent,
                  ),
                  child: TextFormField(
                    style: TextStyle(

                    ),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      counterStyle: TextStyle(

                      ),
                      labelStyle: TextStyle(

                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(
                        width: 2.0,

                    )),
                    color: Colors.transparent,
                  ),
                  child: TextFormField(
                    style: TextStyle(

                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Gender ',
                      counterStyle: TextStyle(

                      ),
                      labelStyle: TextStyle(

                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(
                        width: 2.0,

                    )),
                    color: Colors.transparent,
                  ),
                  child: TextFormField(
                    style: TextStyle(

                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Age',
                      counterStyle: TextStyle(

                      ),
                      labelStyle: TextStyle(

                      ),
                    ),
                    onChanged: (String value){},
                  ),

                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 130.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        border: Border(bottom:BorderSide(
                            width: 2.0,
                        )),
                        color: Colors.transparent,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Dr',
                          counterStyle: TextStyle(
                          ),
                          labelStyle: TextStyle(

                          ),
                        ),
                        onChanged: (String value){},
                      ),

                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      width: 130.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        border: Border(bottom:BorderSide(
                            width: 2.0,

                        )),
                        color: Colors.transparent,
                      ),
                      child: TextFormField(
                        style: TextStyle(

                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          counterStyle: TextStyle(

                          ),
                          labelStyle: TextStyle(

                          ),
                        ),
                        onChanged: (String value){},
                      ),

                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: 10.0,
                  height: 40.0,
                  child: FloatingActionButton.extended(
                    label: Text('Sign Up'), // <-- Text
                    backgroundColor: Colors.black54,
                    onPressed: () {
                    },
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
