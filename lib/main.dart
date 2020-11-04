import 'package:flutter/material.dart';
import 'package:vegetables_app_ui/src/pages/detail_page.dart';
import 'package:vegetables_app_ui/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vegetables App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/'     : (BuildContext context) => HomePage(),
        'detailPage' : (BuildContext context) => DetailPage()
      },
    );
  }
}