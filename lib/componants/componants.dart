import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defultformfield ({
  required TextEditingController Controller ,
  required TextInputType type ,
  bool ispassword = false ,
  required  validate ,
  void onchange ,
  required String label ,
  IconData ? prefix ,
  IconData ?  suffix ,
  VoidCallback ? suffixpressed ,
  VoidCallback ? onTap ,
  bool isClickable = true ,
}) => TextFormField(
  controller: Controller,
  keyboardType: type,
  obscureText: ispassword,
  onTap: onTap ,
  enabled: isClickable,
  validator: validate ,
  onChanged:(value) {

  },
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix != null ? IconButton(
      onPressed: suffixpressed,
      icon: Icon(suffix),
    ) : null,
    border: OutlineInputBorder(),
  ),
) ;

