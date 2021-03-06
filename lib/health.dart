import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HealthNews extends StatefulWidget {
  @override
  _HealthNewsState createState() => _HealthNewsState();
}

class _HealthNewsState extends State<HealthNews> {
  int currentTab = 0;

  final String url = "https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=3fc464c420834d6fb76899f176e1ae6d";
  List data;
  bool isdataloaed = false;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    print(response.body);
    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['articles'];
      isdataloaed = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: isdataloaed ? ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Image.network(data[index]['urlToImage']),
              Divider(),
              Card(
                color: Colors.white,
                child: Text(data[index]['title'],style: TextStyle(fontSize: 20.0,
                    color: Colors.lightBlue[900]),),
              ),
              Divider(height: 20.0,),
            ],
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
          strokeWidth: 6.0,
        ),
      ),
    );
  }
}
