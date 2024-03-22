import 'package:akhbarapp/Screens/MyHomePage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'services/newsService.dart';

void main() async {
  // getNews();
  NewsService(Dio()).getGeneralNews();
  // NewsService news = NewsService(Dio());
  // news.getGeneralNews();
  runApp(const MyApp());
}

// final dio = Dio();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akhbar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomeScreen(),
    );
  }
}
