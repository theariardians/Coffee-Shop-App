import 'package:flutter/material.dart';
import 'package:the_ari_s_application4/core/app_export.dart';

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
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlyBulkHeart,
      activeIcon: ImageConstant.imgIconlyBulkHeart,
      type: BottomBarEnum.Iconlybulkheart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTrophy,
      activeIcon: ImageConstant.imgTrophy,
      type: BottomBarEnum.Trophy,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlyBulkNotification,
      activeIcon: ImageConstant.imgIconlyBulkNotification,
      type: BottomBarEnum.Iconlybulknotification,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(
          24.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray3003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -10,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appTheme.blueGray400,
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: theme.colorScheme.primary,
                  ),
                  Container(
                    height: 5.v,
                    width: 10.h,
                    margin: EdgeInsets.only(top: 5.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0.64, -0.25),
                        end: Alignment(0.28, 1.14),
                        colors: [
                          theme.colorScheme.primary,
                          appTheme.deepOrangeA100,
                        ],
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
    );
  }
}

enum BottomBarEnum {
  Home,
  Iconlybulkheart,
  Trophy,
  Iconlybulknotification,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

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
