import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';

class ProductModel{
  String uniqueId;
  String name;
  String imagePath;
  Color color;
  String origin;
  String rating;
  String price;
  String uMeasure;
  String description;
  bool like;
  bool addCar;

  ProductModel({
    this.uniqueId,
    this.name,
    this.imagePath,
    this.color,
    this.origin,
    this.rating,
    this.price,
    this.uMeasure,
    this.description,
    this.like = false,
    this.addCar = false
  });

  static List<ProductModel> popularList = [
    ProductModel( uniqueId: "P-1", name: "Cauliflouwer", imagePath: "cauliflouwer.png", color: cauliflouwerColor, origin: "Bangladesh", rating: "4.5", price: "03", uMeasure: "1Kg", description: "Dolor exercitation ex culpa aliqua deserunt sit commodo. Add duis consectetur ad nisi deserunt qui dolore. Eu et amet exercitation"),
    ProductModel( uniqueId: "P-2", name: "Cabbage", imagePath: "cabbage.png", color: cabbageColor, origin: "China", rating: "4.5", price: "04", uMeasure: "1Kg", description: "Dolor exercitation ex culpa aliqua deserunt sit commodo. Add duis consectetur ad nisi deserunt qui dolore. Eu et amet exercitation"),
    ProductModel( uniqueId: "P-3", name: "Capsicum", imagePath: "capsicum.png", color: capsicumColor, origin: "Japan", rating: "4.5", price: "03", uMeasure: "1Kg", description: "Dolor exercitation ex culpa aliqua deserunt sit commodo. Add duis consectetur ad nisi deserunt qui dolore. Eu et amet exercitation"),
  ];

  static List<ProductModel> bestSellingList = [
    
    ProductModel( uniqueId: "B-1", name: "Capsicum", imagePath: "capsicum.png", color: capsicumColor, origin: "Japan", rating: "4.5", price: "03", uMeasure: "1Kg", description: "Dolor exercitation ex culpa aliqua deserunt sit commodo. Add duis consectetur ad nisi deserunt qui dolore. Eu et amet exercitation"),
    ProductModel( uniqueId: "B-2", name: "Cauliflouwer", imagePath: "cauliflouwer.png", color: cauliflouwerColor, origin: "Bangladesh", rating: "4.5", price: "03", uMeasure: "1Kg", description: "Dolor exercitation ex culpa aliqua deserunt sit commodo. Add duis consectetur ad nisi deserunt qui dolore. Eu et amet exercitation"),
    ProductModel( uniqueId: "B-3", name: "Cabbage", imagePath: "cabbage.png", color: cabbageColor, origin: "China", rating: "4.5", price: "04", uMeasure: "1Kg", description: "Dolor exercitation ex culpa aliqua deserunt sit commodo. Add duis consectetur ad nisi deserunt qui dolore. Eu et amet exercitation"),
  ];
}