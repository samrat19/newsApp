import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable{}

class FetchNewsEvent extends NewsEvent{
  @override
  List<Object> get props => throw UnimplementedError();

}

