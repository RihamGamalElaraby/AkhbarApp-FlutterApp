import 'package:akhbarapp/widgets/CategoriesListView.dart';
import 'package:akhbarapp/widgets/NewsListViewBuilder.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Row(mainAxisSize: MainAxisSize.min, children: [
            Text('News'),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            )
          ]),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            )
            // SliverToBoxAdapter(
            //   child: NewsListView(),
            // )
          ],
        ));
  }
}
