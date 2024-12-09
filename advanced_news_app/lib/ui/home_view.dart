import 'package:advanced_news_app/ui/widgets/custom_app_bar.dart';
import 'package:advanced_news_app/ui/widgets/custom_carousel.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'MMA',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See All'),
                    ),
                  ],
                ),
                const SizedBox(height: 0.12),
                const CustomCarouselSlider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
