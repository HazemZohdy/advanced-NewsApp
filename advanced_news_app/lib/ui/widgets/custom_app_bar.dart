import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.icon, this.size = 35, required this.sizeIcon});
  final IconData icon;
  final double size, sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.withOpacity(0.30),
      ),
      child: Icon(
        icon,
        size: sizeIcon,
      ),
    );
  }
}
