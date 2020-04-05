class NewsResponse{

  String author;
  String urlToImage;
  String title;

  NewsResponse.fromJSON(Map<String,dynamic> parsedJson){
    author = parsedJson['author'];
    urlToImage = parsedJson['urlToImage'];
    title = parsedJson['title'];
  }
}