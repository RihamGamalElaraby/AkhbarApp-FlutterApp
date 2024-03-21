import 'package:akhbarapp/models/categoryModel.dart';
import 'package:flutter/material.dart';

import 'CategotyCard.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(
        categoryName: 'Business', imageAssetUrl: 'assets/business.avif'),
    CategoryModel(
        categoryName: 'Entertainment',
        imageAssetUrl: 'assets/entertaiment.avif'),
    CategoryModel(
        categoryName: 'general', imageAssetUrl: 'assets/general.avif'),
    CategoryModel(categoryName: 'health', imageAssetUrl: 'assets/health.avif'),
    CategoryModel(
        categoryName: 'science', imageAssetUrl: 'assets/science.avif'),
    CategoryModel(categoryName: 'sports', imageAssetUrl: 'assets/sports.avif'),
    CategoryModel(
        categoryName: 'technology', imageAssetUrl: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 90,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(category: categories[index]);
            }));
  }
}
