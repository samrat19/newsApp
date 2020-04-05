import 'package:flutter/material.dart';

class BusinessNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.blueGrey[900],
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  //todo
                  Image.network(''),
                  Divider(),
                  ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Card(
                      color: Colors.blueGrey[800],
                      //todo
                      child: Text(
                        '',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Divider(
                    height: 20.0,
                  ),
                ],
              );
            },
          )),
    );
    ;
  }
}
