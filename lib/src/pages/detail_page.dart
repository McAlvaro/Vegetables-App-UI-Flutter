import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';
import 'package:vegetables_app_ui/src/models/product_model.dart';
import 'package:vegetables_app_ui/src/widgets/appbar_widget.dart';
import 'package:vegetables_app_ui/src/widgets/button_add_widget.dart';
import 'package:vegetables_app_ui/src/widgets/counter_widget.dart';
import 'package:vegetables_app_ui/src/widgets/description_widget.dart';
import 'package:vegetables_app_ui/src/widgets/image_product.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductModel product = ModalRoute.of(context).settings.arguments;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[_fondo(),
      Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 30.0,
            sigmaY: 30.0
          ),
          child: Scaffold(
            appBar: myAppBarDetail(context, product.like),
            backgroundColor: Color(0xDBF3F2).withOpacity(.4),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildImageProduct(product.imagePath, product.color, product.uniqueId),
                SizedBox( height: 20.0 ),
                CounterProduct( name: product.name ),
                SizedBox( height: 10.0 ),
                Container(
                  padding: EdgeInsets.symmetric( horizontal: 20.0 ),
                  child: Text("Made in \n${product.origin}", style: TextStyle( color: primaryTextColor, fontSize: 14.0 ),),
                ),
                SizedBox( height: 30.0 ),
                descriptionProduct(product.description),
                SizedBox( height: 15.0 ),
                buttonAddCar(product.price, product.uMeasure)
              ],
            ),
          ),
          )
        )
      ],
    );
  }

  Widget _fondo() {
    final background = Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
        ),
        Positioned(
          left: -110.0,
          top: -70.0,
          child: Image.asset(
            "assets/cabbage.png",
            width: 350.0,
          ),
        )
      ],
    );
    return background;
  }
}
