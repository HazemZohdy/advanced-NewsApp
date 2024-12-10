import 'package:advanced_news_app/models/news_item.dart';
import 'package:advanced_news_app/ui/widgets/custom_app_bar.dart';
import 'package:advanced_news_app/ui/widgets/custom_carousel.dart';
import 'package:advanced_news_app/ui/widgets/custom_title.dart';
import 'package:advanced_news_app/ui/widgets/recommendation_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomAppBar(
                      icon: Icons.menu,
                    ),
                    Row(
                      children: [
                        CustomAppBar(
                          icon: Icons.search,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CustomAppBar(
                          icon: Icons.notifications,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 26),
                const CustomTitle(title: 'MMA'),
                const SizedBox(height: 0.12),
                const CustomCarouselSlider(),
                const SizedBox(height: 16),
                const CustomTitle(title: 'Recommendation'),
                const SizedBox(height: 8),
                ...news
             
                    .map((NewsItemModel) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child:
                              RecommendationItem(newsItemModel: NewsItemModel),
                        ))
                    .toList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
