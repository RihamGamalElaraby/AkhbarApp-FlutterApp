// import 'package:akhbarapp/models/articleModel.dart';
// import 'package:akhbarapp/services/newsService.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// import 'NewsTile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getNews();
//   }

//   Future<void> getNews() async {
//     articles = await NewsService(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//     print('done');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//             (context, index) {
//               return NewsTile(
//                 articleModel: articles[index],
//               );
//             },
//             childCount: articles.length,
//           ));
//   }
// }
