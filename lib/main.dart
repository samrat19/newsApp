import 'package:flutter/material.dart';
import 'package:newsapp/screen/business_news_screen.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primaryColor: Colors.blueGrey[900],
  ),
  home: BusinessNewsScreen(),
));
