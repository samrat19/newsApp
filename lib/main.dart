import 'package:flutter/material.dart';
import 'package:newsapp/logic/news_bloc.dart';
import 'package:newsapp/screen/business_news_screen.dart';
import 'package:provider/provider.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BusinessNewsScreen();
      ),
    );
