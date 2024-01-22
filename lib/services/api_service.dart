import 'package:http/http.dart' as http;
import 'package:news_app_farhan/model/article_model.dart';

class ApiService {
  final String linkApi = "https://newsapi.org/v2";

  Future<ArticleModel> getArticle(String? category) async {
    final response = await http.get(Uri.parse(
        "$linkApi/top-headlines?apiKey=4ea5ce9c64d049878c8d892b9357b5d3&country=id&category=$category"));
    if (response.statusCode == 200) {
      return articleModelFromJson(response.body);
    } else {
      throw Exception('Failed to load article');
    }
  }
}
