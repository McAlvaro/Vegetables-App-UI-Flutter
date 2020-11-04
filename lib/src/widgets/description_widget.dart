import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';

Widget descriptionProduct( String description ){
  return Container(
    padding: EdgeInsets.symmetric( horizontal: 20.0 ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("About", style: TextStyle( color: titleTextColor, fontWeight: FontWeight.bold, fontSize: 16.0 ),),
        SizedBox( height: 4.0 ),
        Text(description, style: TextStyle( color: primaryTextColor ),)
      ],
    ),
  );
}