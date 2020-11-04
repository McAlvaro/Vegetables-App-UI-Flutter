import 'package:flutter/material.dart';

Widget buildImageProduct(String imagePath, Color color, String uniqueId) {
  return Container(
    height: 260.0,
    width: double.infinity,
    child: Stack(
      children: <Widget>[
        Positioned(
          left: 45.0,
          child: Container(
            height: 260.0,
            width: 180.0,
            decoration: BoxDecoration(
                border: Border.all(width: 8.0, color: color),
                borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
        Positioned(
            bottom: -17.0,
            right: 30.0,
            child: Hero(
              tag: "hero$uniqueId",
              child: Image.asset(
                "assets/$imagePath",
                height: 270.0,
              ),
            ))
      ],
    ),
  );
}
