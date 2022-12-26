

import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  static final List<String> items = <String>[
    'المرج ',
    'عين شمس ',
    'المطريه',
    'حلميه الزيتون',
  ];

  String value  = items.first;
  @override
  Widget build(BuildContext context) {
    return BuildDropdown();
  }

  Widget BuildDropdown()=> Container(
    width: 250.0,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black26,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blue[50],
    ),

    child: DropdownButtonHideUnderline(
      child:DropdownButton<String>(
        isExpanded: true,
        hint: Expanded(
          child: Text(
            'من - محطه',
          ),
        ),
        value: value,
        items : items.map((items)=>DropdownMenuItem<String>(
          child:Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Text(
              items,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
          ),
          value: items,

        ) ).toList(),
        onChanged: (value)=>setState(() {
          this.value= value! ;
        }),
      ),
    ),
  );
}
