import 'package:flutter/material.dart';

import 'package:newsapp/general.dart';
import 'package:newsapp/business.dart';
import 'package:newsapp/sports.dart';
import 'package:newsapp/science.dart';
import 'package:newsapp/technology.dart';
import 'package:newsapp/health.dart';
import 'package:newsapp/entertainment.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController tabController;
  int _currentPage = 0;
  final _pages = [
    GeneralNews(),
    BusinessNews(),
    SportsNews(),
    ScienceNews(),
    TechnologyNews(),
    HealthNews(),
    EntertainmentNews(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Hello India",style: TextStyle(color: Colors.white),),
          ),
          body: _pages[_currentPage],
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.black,
            currentIndex: _currentPage,
            onTap: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.accessibility, color: Colors.blue,),
                  title: Text("General" , style: TextStyle(color: Colors.blue))
              ),BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance, color: Colors.blue,),
                  title: Text("Business", style: TextStyle(color: Colors.blue))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.directions_run, color: Colors.blue,),
                  title: Text("Sports", style: TextStyle(color: Colors.blue))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplanemode_active,  color: Colors.blue,),
                  title: Text("Science", style: TextStyle(color: Colors.blue))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplay, color: Colors.blue,),
                  title: Text("Technology", style: TextStyle(color: Colors.blue))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wb_sunny, color: Colors.blue,),
                  title: Text("Health", style: TextStyle(color: Colors.blue))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airline_seat_recline_extra, color: Colors.blue,),
                  title: Text("Entertainment", style: TextStyle(color: Colors.blue))
              ),
            ],
          ),
        ),
      ),
    );
  }
}