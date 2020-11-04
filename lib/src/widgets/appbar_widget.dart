import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/constants/constants.dart';

Widget myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(40.0),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("MoonShops",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      leading:
          IconButton(icon: Image.asset("assets/menu.png"), onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: Stack(
              children: <Widget>[
                Positioned(
                    right: 5.0,
                    top: 2.0,
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: redColor),
                    )),
                Image.asset(
                  "assets/bell1.png",
                  height: 24.0,
                )
              ],
            ),
            onPressed: () {}),
        IconButton(
            icon: CircleAvatar(
              child: Image.asset("assets/user.png"),
            ),
            onPressed: () {}),
        SizedBox(
          width: 10.0,
        )
      ],
    ),
  );
}

Widget myAppBarDetail(BuildContext context, bool like) {
  final _selected = redColor;
  final _unselected = grisColor;
  return PreferredSize(
    preferredSize: Size.fromHeight(40.0),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Image.asset(
          "assets/back.png",
          width: 24.0,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        CircleAvatar(
          backgroundColor: like ? _selected : _unselected ,
          radius: 13.0,
          child: IconButton(
            splashColor: Colors.transparent,
            padding: EdgeInsets.all(5.0),
            icon: Image.asset("assets/like.png"), 
            onPressed: (){}),
        ),
        SizedBox( width: 10.0 )
      ],
    ),
  );
}
