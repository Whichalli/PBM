import 'package:flutter/material.dart';

class BottomBarButtonModel {
  late final Widget icon;
  late final Widget? activeIcon;
  late final String text;

  BottomBarButtonModel(
      {String? text, required Widget icon, Widget? activeIcon}) {
    this.icon = icon;
    this.text = text ?? '';
    this.activeIcon = activeIcon;
  }
}
