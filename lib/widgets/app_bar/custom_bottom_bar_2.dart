import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgChangeimage,
      title: "Home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcons8musicalnotes,
      activeIcon: ImageConstant.imgIcons8musicalnotes,
      title: "Play".tr,
      type: BottomBarEnum.Play,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcons8usermale,
      activeIcon: ImageConstant.imgIcons8usermale,
      title: "Profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: getHorizontalSize(
            374,
          ),
          child: Divider(
            height: getVerticalSize(
              1,
            ),
            thickness: getVerticalSize(
              1,
            ),
            color: ColorConstant.blueGray90002,
          ),
        ),
        Container(
          margin: getMargin(
            right: 1,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.pinkA100,
          ),
          child: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              currentIndex: selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              items: List.generate(bottomMenuList.length, (index) {
                return BottomNavigationBarItem(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: bottomMenuList[index].icon,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color: ColorConstant.whiteA700,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAlegreyaSansBold12.copyWith(
                            color: ColorConstant.whiteA70001,
                          ),
                        ),
                      ),
                    ],
                  ),
                  activeIcon: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: bottomMenuList[index].activeIcon,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color: ColorConstant.gray5001,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAlegreyaSansBold12.copyWith(
                            color: ColorConstant.whiteA70001.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  label: '',
                );
              }),
              onTap: (index) {
                selectedIndex.value = index;
                onChanged?.call(bottomMenuList[index].type);
              },
            ),
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Play,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
