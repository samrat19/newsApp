import 'model/news_response_model.dart';
import 'news_api_provider.dart';

class Repository {
  NewsApiProvider _newsApiProvider = NewsApiProvider();

  Future<NewsResponse> fetchLondonWeather() =>
      _newsApiProvider.fetchBusinessNews();
}
