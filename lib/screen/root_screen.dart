import 'package:flutter/material.dart';
import 'package:newsapp/screen/business_news_screen.dart';
import 'package:newsapp/screen/entertainment.dart';
import 'package:newsapp/screen/science.dart';
import 'package:newsapp/screen/sports.dart';
import 'package:newsapp/screen/technology.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with SingleTickerProviderStateMixin {
  TabController tabController;
  int _currentPage = 0;
  final _pages = [
    BusinessNewsScreen(),
    SportsNewsScreen(),
    ScienceNewsScreen(),
    TechnologyNewsScreen(),
    EntertainmentNewsScreen(),
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
            backgroundColor: Colors.blueGrey[900],
            title: Text("Headlines India",style: TextStyle(color: Colors.white),),
          ),
          body: _pages[_currentPage],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentPage,
            onTap: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            items: [
             BottomNavigationBarItem(
               backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.account_balance, color: Colors.white,),
                  title: Text("Business", style: TextStyle(color: Colors.white))
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.directions_run,
                    color: Colors.white,),
                  title: Text("Sports", style: TextStyle(color: Colors.white))
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.airplanemode_active,  color: Colors.white,),
                  title: Text("Science", style: TextStyle(color: Colors.white))
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.airplay, color: Colors.white,),
                  title: Text("Technology", style: TextStyle(color: Colors.white))
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.blueGrey[900],
                  icon: Icon(Icons.airline_seat_recline_extra, color: Colors.white,),
                  title: Text("Entertainment", style: TextStyle(color: Colors.white))
              ),
            ],
          ),
        ),
      ), onWillPop: () {},
    );
  }
}