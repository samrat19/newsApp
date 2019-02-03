import 'package:flutter/material.dart';
import 'package:newsapp/homePage.dart';

void main() => runApp(new MaterialApp(
  title: "Heath Care",
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
      primaryColor: Colors.blue,
      primaryColorDark: Colors.blue[700],
      accentColor: Colors.blue
  ),
  home: MyPage(),
));
