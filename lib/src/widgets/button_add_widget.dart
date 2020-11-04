import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';

Widget buttonAddCar( String price, String uMeasure ){

  return Container(
    padding: EdgeInsets.symmetric( horizontal: 20.0 ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("\$$price $uMeasure", style: TextStyle( color: textPriceColor, fontSize: 24.0, fontWeight: FontWeight.bold),),

        RaisedButton(
          color: redColor,
          padding: EdgeInsets.symmetric( horizontal: 25.0 ),
          shape: StadiumBorder(),
          child: Text("ADD TO CART", style: TextStyle( color: Colors.white ),),
          onPressed: (){},
        )
      ],
    ),
  );

}