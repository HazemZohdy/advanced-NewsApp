import 'package:advanced_news_app/models/news_item.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.newsItemModel});
  final NewsItemModel newsItemModel;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('lol'),
      ),
    );
  }
}
