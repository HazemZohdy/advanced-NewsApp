import 'package:advanced_news_app/models/news_item.dart';
import 'package:advanced_news_app/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NewsDetailsAppBar extends StatelessWidget {
  const NewsDetailsAppBar({super.key, required this.newsItemModel});
  final NewsItemModel newsItemModel;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      leading: const Padding(
        padding: EdgeInsets.all(11.0),
        child: CustomAppBar(
          sizeIcon: 35,
          icon: Icons.chevron_left,
        ),
      ),
      actions: const [
        CustomAppBar(
          sizeIcon: 25,
          icon: Icons.mark_as_unread_outlined,
          size: 30,
        ),
        SizedBox(width: 8),
        CustomAppBar(
          sizeIcon: 25,
          icon: Icons.menu,
          size: 25,
        ),
      ],
      iconTheme: const IconThemeData(color: Colors.white),
      expandedHeight: size.height * .4,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                newsItemModel.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
