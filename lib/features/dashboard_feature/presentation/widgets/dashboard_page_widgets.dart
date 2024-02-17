import 'package:flutter/material.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/discover_page/discover_page.dart';
import 'package:sizer_pro/sizer.dart';
import '../../../../config/app_colors.dart';
import '../../../bookmark_feature/presentation/pages/bookmark_page.dart';
import '../../../home_feature/presentation/pages/home_page/home_page.dart';
import '../../../profile_feature/presentation/pages/profile_page/profile_page.dart';

Widget buildPage(int index) {
  final pages = [
    const HomePage(),
    const DiscoverPage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];
  return pages[index];
}

BottomNavigationBarItem buildBottomNavBarItem(
    {required String lable,
    IconData? icon,
    String? activeAssetIcon,
    String? assetIcon}) {
  return BottomNavigationBarItem(
    activeIcon: icon != null
        ? Icon(
            icon,
            color: AppColors.primaryColor,
            size: 12.sp,
          )
        : Image.asset(
            activeAssetIcon!,
            color: AppColors.primaryColor,
            width: 12.sp,
          ),
    label: lable,
    icon: icon != null
        ? Icon(
            icon,
            size: 11.sp,
          )
        : Image.asset(
            assetIcon!,
            width: 11.sp,
          ),
  );
}
