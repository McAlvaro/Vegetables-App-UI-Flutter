import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';
import 'package:vegetables_app_ui/src/models/product_model.dart';
import 'package:vegetables_app_ui/src/widgets/product_cards.dart';

class BestSelling extends StatefulWidget {
  BestSelling({Key key}) : super(key: key);

  @override
  _BestSellingState createState() => _BestSellingState();
}

class _BestSellingState extends State<BestSelling> {
  List<ProductModel> bestSellingList = ProductModel.bestSellingList;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        textTitle(),
        SizedBox( height: 8.0 ),
        productListView(context),
      ],
    ));
  }

  Widget textTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Best Selling",
            style: TextStyle(
              color: titleTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Text(
            "View All",
            style: TextStyle(
              color: redColor,
              fontWeight: FontWeight.w600,
              fontSize: 11.0,
            ),
          )
        ],
      ),
    );
  }

  Widget productListView(BuildContext context) {
    return Container(
      height: 155.0,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bestSellingList.length,
        itemBuilder: (context, index) {
          return ProductCard(product: bestSellingList[index]);
        },
      ),
    );
  }
}
