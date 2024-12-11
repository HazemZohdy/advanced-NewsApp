import 'package:advanced_news_app/models/news_item.dart';
import 'package:flutter/material.dart';

import 'widgets/news_details_app_bar.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.newsItemModel});
  final NewsItemModel newsItemModel;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsDetailsAppBar(newsItemModel: newsItemModel,),
        ],
      ),
    );
  }
}
