import 'package:akhbarapp/widgets/NewsListViewBuilder.dart';
import 'package:flutter/material.dart';

class CatergoryView extends StatelessWidget {
  const CatergoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
