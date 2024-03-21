import 'package:flutter/material.dart';

import 'NewsTile.dart';

Widget NewsListView() => SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return const NewsTile();
    }, childCount: 10));
