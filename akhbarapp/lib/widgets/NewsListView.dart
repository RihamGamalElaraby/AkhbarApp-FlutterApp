import 'package:akhbarapp/models/articleModel.dart';
import 'package:flutter/material.dart';

import 'NewsTile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  NewsListView({super.key, required this.articles});

  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        return NewsTile(
          articleModel: articles[index],
        );
      },
      childCount: articles.length,
    ));
  }
}
