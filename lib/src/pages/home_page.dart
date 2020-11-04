import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/widgets/appbar_widget.dart';
import 'package:vegetables_app_ui/src/widgets/best_selling_widget.dart';
import 'package:vegetables_app_ui/src/widgets/categories_widgets.dart';
import 'package:vegetables_app_ui/src/widgets/popular_product_widget.dart';
import 'package:vegetables_app_ui/src/widgets/search_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        _fondo(),
        Positioned.fill(

          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 30.0,
              sigmaY: 30.0
            ),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: myAppBar(),
              backgroundColor: Color(0xDBF3F2).withOpacity(.4),
              body: Column(
                children: <Widget>[
                  SizedBox( height: 15.0 ),
                  searchBarWidget(context),
                  SizedBox( height: 15 ),
                  Categories(),
                  SizedBox( height: 10.0),
                  PopularProducts(),
                  SizedBox( height: 6.0 ),
                  BestSelling()
                  
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _fondo(){
    final background = Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
        Positioned(
          left: -90.0,
          top: -60.0,
          child: Image.asset("assets/cabbage.png", width: 280.0)
        ),
        Positioned(
          bottom: -50.0,
          left: -120.0,
          child: Image.asset("assets/capsicum.png", width: 450)),
        Positioned(
          top: 70.0,
          right: -20,
          child: Image.asset("assets/capsicum.png", width: 180)
        )
      ],
    );

    return background;
  }
}