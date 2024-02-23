import 'package:flutter/material.dart' show Icon, Color;

class BottomNavigationBarItemModel {
  String title;
  Icon icon;
  Color activeColor;
  Color inActiveColor;

  BottomNavigationBarItemModel(
  {
    required this.title,
    required this.icon,
    required this.activeColor,
    required this.inActiveColor,
}
      );
}