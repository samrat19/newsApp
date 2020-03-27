import 'dart:convert';

import 'package:newsapp/data/model/news_model.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/resources/api_url.dart';

abstract class ArticleRepository{
  Future<List<Articles>> getArticles();
}

class ArticleRepositoryImplementation extends ArticleRepository{
  @override
  Future<List<Articles>> getArticles() async{
    var response = await http.get(ApiUrl().businessNewsUrl);

    if(response.statusCode == 200){
      List<Articles> articles =  NewsModel.fromJson(json.decode(response.body)).articles;

      return articles;
    }else{
      throw Exception();
    }
  }
}