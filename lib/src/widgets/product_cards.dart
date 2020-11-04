import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';
import 'package:vegetables_app_ui/src/models/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;
  ProductCard({this.product});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: productCard(widget.product),
    onTap: () {
      Navigator.pushNamed(context, 'detailPage', arguments:widget.product);
    },);
  }

  Widget productCard(ProductModel product) {
    return Container(
      margin: EdgeInsets.only(right: 30.0),
      height: 155.0,
      width: 180.0,
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 50.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: cardsColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTitle(product),
                SizedBox(height: 10.0),
                _buildOrigin(product.origin),
                SizedBox(height: 5.0),
                _buildRating(product.rating),
                SizedBox(height: 5.0),
                _buildPrice(product.price, product.uMeasure),
                Expanded(child: Container()),
                _buildAddCar(product),
              ],
            ),
          ),
          Positioned(
            right: 15.0,
            top: 32.0,
            child: _buildImage(product.imagePath, product.uniqueId),
          )
        ],
      ),
    );
  }

  Widget _buildTitle(ProductModel product) {
    Color _selected = redColor;
    Color _unselected = grisColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          product.name,
          style: TextStyle(
              color: titleTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 13.0),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4.0),
                    blurRadius: 3.0,
                    color: product.like
                        ? _selected.withOpacity(.4)
                        : _unselected.withOpacity(.4))
              ]),
          child: CircleAvatar(
            backgroundColor: product.like ? _selected : _unselected,
            radius: 9.0,
            child: IconButton(
              padding: EdgeInsets.all(5.0),
              splashColor: Colors.transparent,
              icon: Image.asset("assets/like.png"),
              onPressed: () {
                setState(() {
                  product.like ? product.like = false : product.like = true;
                });
              },
            ),
          ),
        )
      ],
    );
  }

  Widget _buildOrigin(String origin) {
    final styleOrigin = TextStyle(color: primaryTextColor, fontSize: 10.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Made in", style: styleOrigin),
        Text(origin, style: styleOrigin)
      ],
    );
  }

  Widget _buildRating(String rating) {
    return Row(
      children: <Widget>[
        Icon(Icons.star, color: starColor, size: 14.0),
        SizedBox(width: 2.0),
        Text(
          rating,
          style: TextStyle(color: primaryTextColor, fontSize: 10.0),
        )
      ],
    );
  }

  Widget _buildPrice(String price, String uMeasure) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: "\$ $price ",
          style: TextStyle(
              color: textPriceColor,
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
        ),
        TextSpan(
          text: uMeasure,
          style: TextStyle(color: textPriceColor, fontSize: 13.0),
        )
      ]),
    );
  }

  Widget _buildAddCar(ProductModel product) {
    Color _selected = redColor;
    Color _unselected = grisColor;
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4.0),
                blurRadius: 3.0,
                color: product.addCar
                    ? _selected.withOpacity(.4)
                    : _unselected.withOpacity(.4),
              )
            ]),
        child: CircleAvatar(
          backgroundColor: product.addCar ? _selected : _unselected,
          radius: 9.0,
          child: IconButton(
              splashColor: Colors.transparent,
              padding: EdgeInsets.all(1.0),
              icon: Icon(Icons.add, size: 16.0, color: Colors.white),
              onPressed: () {
                setState(() {
                  product.addCar ? product.addCar = false : product.addCar = true;
                });

              },),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath, String uniqueId) {
    return Hero(
      tag: "hero$uniqueId",
      child: Image.asset(
        "assets/$imagePath",
        height: 85.0,
        width: 75.0,
      ),
    );
  }
}
