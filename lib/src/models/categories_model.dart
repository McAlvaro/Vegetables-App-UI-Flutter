import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';

class CategoriesModel{
  String name;
  String imgPath;
  Color backgroundColor;
  Color iconColor;

  CategoriesModel({
    this.name,
    this.imgPath,
    this.backgroundColor = cardsColor,
    this.iconColor = primaryTextColor

  });
  static List<CategoriesModel> list = [
    CategoriesModel( name: "Vegetable", imgPath: "vegetables1.png", backgroundColor: textPriceColor, iconColor: Colors.white),
    CategoriesModel( name: "Fruit", imgPath: "fruit.png" ),
    CategoriesModel( name: "Milk", imgPath: "milk.png" ),
    CategoriesModel( name: "Baquery", imgPath: "bakery.png" ),
    CategoriesModel( name: "Fruit2", imgPath: "fruit.png" )
  ];
}