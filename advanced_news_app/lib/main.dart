import 'package:advanced_news_app/ui/custom_navbar_item.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const AdvancedNewsApp());
}

class AdvancedNewsApp extends StatelessWidget {
  const AdvancedNewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const CustomBottomNavBar(),
    );
  }
}
