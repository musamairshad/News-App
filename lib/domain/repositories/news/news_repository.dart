import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/keys/api_key.dart';
import 'package:news_app/data/models/news_channel_headlines_model.dart';

class NewsRepository {
  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlines() async {
    final url = Uri.parse("https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=$apiKey");
    final response = await http.get(url);
    if (kDebugMode) {
      print(response.body);
    }
    final resData = json.decode(response.body);
    if (response.statusCode == 200) {
      return NewsChannelHeadlinesModel.fromJson(resData);
    } else {
      throw Exception("Error occurred.");
    }
  }
}
