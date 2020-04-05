import 'package:newsapp/logic/repository.dart';
import 'package:rxdart/rxdart.dart';

import 'model/news_response_model.dart';

class NewsBloc {
  Repository _repository = Repository();

  //Create a PublicSubject object responsible to add the data which is got from
  // the server in the form of WeatherResponse object and pass it to the UI screen as a stream.
  final _newsFetcher = PublishSubject<NewsResponse>();

  //This method is used to pass the weather response as stream to UI
  Stream<NewsResponse> get news => _newsFetcher.stream;

  fetchLondonWeather() async {
    NewsResponse newsResponse = await _repository.fetchLondonWeather();
    _newsFetcher.sink.add(newsResponse);
  }

  dispose() {
    //Close the weather fetcher
    _newsFetcher.close();
  }
}

final weatherBloc = NewsBloc();