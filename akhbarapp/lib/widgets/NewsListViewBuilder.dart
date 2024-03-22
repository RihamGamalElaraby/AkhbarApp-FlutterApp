import 'package:akhbarapp/models/articleModel.dart';
import 'package:akhbarapp/services/newsService.dart';
import 'package:akhbarapp/widgets/NewsListView.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();

    future = NewsService(Dio()).getGeneralNews(category: widget.category);
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child: Center(child: Text('there is an error')));
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}



 //   return isLoading
    //       ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //       : articles.isNotEmpty
    //           ? NewsListView(
    //               articles: articles,
    //             )
    //           : SliverToBoxAdapter(
    //               child: Center(child: Text('there is an error')));
      // List<ArticleModel> articles = [];
  // @override
  // void initState() {
  //   super.initState();
  //   getNews();
  // }
  // Future<void> getNews() async {
  //   articles = await NewsService(Dio()).getGeneralNews();
  //   isLoading = false;
  //   setState(() {});
  //   print('done');
  // }
