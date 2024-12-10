import 'package:advanced_news_app/models/news_item.dart';
 
import 'package:flutter/material.dart';
 

class RecommendationItem extends StatelessWidget {
  const RecommendationItem({super.key, required this.newsItemModel});
  final NewsItemModel newsItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            newsItemModel.imgUrl,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsItemModel.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey),
              ),
              Text(
                newsItemModel.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text('${newsItemModel.outher} • ${newsItemModel.time}'),
            ],
          ),
        )
      ],
    );
  }
}
