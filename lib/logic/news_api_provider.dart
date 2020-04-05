import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/logic/model/news_response_model.dart';

class NewsApiProvider {
  final _newsUrl =
      'https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=3fc464c420834d6fb76899f176e1ae6d';

  Future<NewsResponse> fetchBusinessNews() async{
    var response = await http.get(
      Uri.encodeFull(_newsUrl),
      headers: {"Accept": "application/json"},
    );
    if(response.statusCode == 200){
      NewsResponse.fromJSON(json.decode(response.body));
    }else{
      throw Exception('fetching error!!!!!');
    }
  }
}
