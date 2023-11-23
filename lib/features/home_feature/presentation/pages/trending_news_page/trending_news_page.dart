import 'package:flutter/material.dart';

import '../../widgets/trending_news_widgets.dart';

class TrendingNewsPage extends StatelessWidget {
  const TrendingNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: trReNewsPageAppBar('Trending'),
    );
  }
}