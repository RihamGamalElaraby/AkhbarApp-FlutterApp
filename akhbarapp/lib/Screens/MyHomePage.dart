import 'package:akhbarapp/widgets/CategoriesListView.dart';
import 'package:akhbarapp/widgets/NewsListView.dart';
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
            Text('Cloud'),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            )
          ]),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomScrollView(
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
                NewsListView()
                // SliverToBoxAdapter(
                //   child: NewsListView(),
                // )
              ],
            )
            // Column(
            //   children: [
            //     CategoriesListView(),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     NewsListView(),
            //   ],
            // ),
            ));
  }
}
