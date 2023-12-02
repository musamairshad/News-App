import 'package:news_app/domain/repositories/news/news_repository.dart';
import 'package:news_app/data/models/news_channel_headlines_model.dart';

class NewsViewModel {
  final repo = NewsRepository();

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlines() async {
    final response = await repo.fetchNewsChannelHeadlines();
    return response;
  }
}
