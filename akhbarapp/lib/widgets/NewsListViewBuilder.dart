import 'package:akhbarapp/models/articleModel.dart';
import 'package:akhbarapp/services/newsService.dart';
import 'package:akhbarapp/widgets/NewsListView.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {});
    print('done');
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty
            ? NewsListView(
                articles: articles,
              )
            : SliverToBoxAdapter(
                child: Center(child: Text('there is an error')));
  }
}
