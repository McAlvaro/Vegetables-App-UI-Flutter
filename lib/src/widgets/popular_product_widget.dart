import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';
import 'package:vegetables_app_ui/src/models/product_model.dart';
import 'package:vegetables_app_ui/src/widgets/product_cards.dart';

class PopularProducts extends StatefulWidget {
  PopularProducts({Key key}) : super(key: key);

  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {

  List<ProductModel> popularList = ProductModel.popularList;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           _buildTextTitle(),
           SizedBox( height: 8.0 ),
           productsListView(context)

         ],
       )
    );
  }

  Widget _buildTextTitle(){
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20.0 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Popular", style: TextStyle( color: titleTextColor, fontWeight: FontWeight.bold, fontSize: 16.0 )),
          Text("View All", style: TextStyle( color: redColor, fontWeight: FontWeight.w600, fontSize: 11.0 ))
        ],
      ),
    );
  }

  Widget productsListView( BuildContext context ){

    return Container(
      height: 155,
      width: double.infinity,
      padding: EdgeInsets.only( left: 20.0 ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularList.length,
        itemBuilder: (context, index){
          return ProductCard( product: popularList[index] );
        }
      ),
    );

  }
}