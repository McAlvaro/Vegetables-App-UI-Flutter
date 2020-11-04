import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';

class CounterProduct extends StatefulWidget {
  final String name;

  CounterProduct({this.name});

  @override
  _CounterProductState createState() => _CounterProductState();
}

class _CounterProductState extends State<CounterProduct> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Text(
            widget.name,
            style: TextStyle(
              color: titleTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          Expanded(child: Container()),
          Container(
            width: 30.0,
            height: 30.0,
            child: RaisedButton(
              padding: EdgeInsets.all(2.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
              color: Colors.white,
              child: Icon(Icons.add, color: textPriceColor,),
              onPressed: (){
                setState(() {
                  counter = counter + 1;
                });
              }
            ),
          ),

          SizedBox( width: 10.0 ),
          Text("$counter", style: TextStyle( fontSize: 24.0 )),

          SizedBox( width: 10.0 ),

          Container(
            width: 30.0,
            height: 30.0,
            child: RaisedButton(
              padding: EdgeInsets.all(2.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
              color: Colors.white,
              child: Icon(Icons.remove, color: textPriceColor,),
              onPressed: (){
                setState(() {
                  counter == 0 ? counter = 0 : counter = counter - 1;
                });
              }
            ),
          )
        ],
      ),
    );
  }
}
