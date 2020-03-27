import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:newsapp/data/model/news_model.dart';

abstract class NewsState extends Equatable{}

class NewsInitialState extends NewsState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class NewsLoadingState extends NewsState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}


class NewsLoadedState extends NewsState{

  List<Articles> articles;

  NewsLoadedState({@required this.articles});

  @override
  List<Object> get props => null;
}

class NewsLoadingErrorState extends NewsState{
  @override
  // TODO: implement props
  List<Object> get props => null;
}