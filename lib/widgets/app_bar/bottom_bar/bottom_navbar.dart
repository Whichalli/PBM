import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/bottom_bar/bottom_bar_buttom_model.dart';

class AppBottomBar extends StatefulWidget {
  final List<BottomBarButtonModel> items;
  final Function(int index) onTap;
  final int index;
  final Color? color;
  const AppBottomBar(
      {Key? key,
      required this.items,
      this.color,
      required this.onTap,
      required this.index})
      : super(key: key);

  @override
  State<AppBottomBar> createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: widget.onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstant.pinkA100,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: widget.index,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        items: widget.items
            .map((e) => BottomNavigationBarItem(
                activeIcon: e.activeIcon, icon: e.icon, label: e.text))
            .toList());
  }
}
