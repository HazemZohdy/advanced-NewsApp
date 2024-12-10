import 'package:advanced_news_app/models/news_item.dart';
import 'package:advanced_news_app/ui/details_view.dart';
import 'package:advanced_news_app/ui/widgets/custom_carousel.dart';
import 'package:advanced_news_app/ui/widgets/custom_title.dart';
import 'package:advanced_news_app/ui/widgets/recommendation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              const CustomTitle(title: 'MMA'),
              const SizedBox(height: 15),
              const CustomCarouselSlider(),
              const SizedBox(height: 16),
              const CustomTitle(title: 'Recommendation'),
              const SizedBox(height: 8),
              ...news
                  .map((NewsItemModel) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: InkWell(
                            onTap: () =>
                                Navigator.of(context, rootNavigator: true).push(
                                  CupertinoPageRoute(
                                    builder: (_) => DetailsView(
                                      newsItemModel: NewsItemModel,
                                    ),
                                  ),
                                ),
                            child: RecommendationItem(
                                newsItemModel: NewsItemModel)),
                      ))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
