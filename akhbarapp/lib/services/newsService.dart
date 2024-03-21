import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=dfdf1670386e4ae18358d74b803338f8');
    print(response);
  }

  void getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?q=sport&apiKey=dfdf1670386e4ae18358d74b803338f8');
    print(response);
  }
}
