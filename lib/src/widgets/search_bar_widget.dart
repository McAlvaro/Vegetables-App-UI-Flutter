import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';

Widget searchBarWidget( BuildContext context){
  return Container(
    height: 40.0,
    width: double.infinity,
    padding: EdgeInsets.symmetric( horizontal: 15.0 ),
    child: Row(
      children: <Widget>[
        Expanded(child: search(context)),
        SizedBox( width: 15.0 ),
        CircleAvatar(
          backgroundColor: cardsColor,
          child: IconButton(
            icon: Image.asset("assets/setting.png", width: 18.0), 
            onPressed: (){}
          ),
        )
        
      ],
    ),
  );
}

Widget search( BuildContext context ){
  return Container(
    height: 40.0,
    child: Theme(
      data: Theme.of(context).copyWith( primaryColor: searchBar, inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide( color: searchBar)
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: searchBar
          )
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ) ), 
      child: TextField(
        cursorColor: primaryTextColor,
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10.0 ),
            child: Image.asset("assets/search.png", height: 10.0),
          ),
          prefixIconConstraints: BoxConstraints(
            minHeight: 20.0
          ),
          fillColor: searchBar,
          hintText: "Search here...",
          hintStyle: TextStyle( color: primaryTextColor )
        ),
      )
    ),
  );

}