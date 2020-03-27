import 'package:flutter/material.dart';
import 'file:///D:/My_Programs/newsApp/lib/screen/root_screen.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primaryColor: Colors.blueGrey[900],
  ),
  home: RootScreen(),
));
