import 'package:akhbarapp/Screens/CategoryView.dart';
import 'package:akhbarapp/models/categoryModel.dart';
import 'package:flutter/material.dart';

Widget CategoryCard({
  required BuildContext context,
  required CategoryModel? category,
}) =>
    Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CatergoryView(
              category: category.categoryName,
            );
          }));
        },
        child: Container(
          height: 90,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category!.imageAssetUrl),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
