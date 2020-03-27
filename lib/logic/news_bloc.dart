import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/data/model/news_model.dart';
import 'package:newsapp/data/repository/article_repository.dart';
import 'package:newsapp/logic/news_state.dart';
import 'news_event.dart';
import 'dart:async';
import 'package:meta/meta.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {

  ArticleRepository articleRepository;

  NewsBloc({
    @required this.articleRepository,
  });

  @override
  NewsState get initialState => NewsInitialState();

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async*{

    if(event is FetchNewsEvent){
      yield NewsLoadingState();
      List<Articles> articles = await articleRepository.getArticles();
    }
  }
}
