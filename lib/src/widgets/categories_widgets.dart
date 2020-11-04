import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';
import 'package:vegetables_app_ui/src/models/categories_model.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<CategoriesModel> categoriesList = CategoriesModel.list;
  static final _selected = textPriceColor;
  static final _unselected = cardsColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: EdgeInsets.only( left: 20.0 ),
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: categoriesList.length,
         itemBuilder: (context, index){
           return categoryCard(categoriesList[index]);
         }
      ),
    );
  }

  
  Widget categoryCard( CategoriesModel category ){

    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric( horizontal: 4.0 ),
        padding: EdgeInsets.symmetric( vertical: 8.0 ),
        width: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: category.backgroundColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset("assets/${category.imgPath}", color: category.iconColor, height: 25.0),
            Text(category.name, style: TextStyle( color: category.iconColor, fontSize: 11.0, fontWeight: FontWeight.bold ),)
          ],
        ),
      ),
      onTap: (){

        setState(() {
          selectCategory(category);
        });

      },
    );

  }

  void selectCategory( CategoriesModel category ){
    categoriesList.forEach((element) { 
      if(element.name == category.name){
        element.backgroundColor = _selected;
        element.iconColor = Colors.white;
      }
      else{
        element.backgroundColor = _unselected;
        element.iconColor = primaryTextColor;
      }
    });
  }
}