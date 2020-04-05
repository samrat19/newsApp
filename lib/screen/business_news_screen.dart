import 'package:flutter/material.dart';
import 'package:newsapp/logic/model/news_response_model.dart';
import 'package:newsapp/logic/news_bloc.dart';

class BusinessNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    newsBloc.fetchLondonWeather();

    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder(
          stream: newsBloc.news,
          builder: (context, AsyncSnapshot<NewsResponse> snapshot) {
            if (snapshot.hasData) {
              return Container(
                color: Colors.blueGrey[900],
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        //todo
                        Image.network(snapshot.data.urlToImage),
                        Divider(),
                        ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Card(
                            color: Colors.blueGrey[800],
                            //todo
                            child: Text(
                              snapshot.data.title,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                        Divider(
                          height: 20.0,
                        ),
                      ],
                    );
                  },
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
