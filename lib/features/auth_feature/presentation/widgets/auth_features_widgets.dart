import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

Widget countryListItem(
    {required String flagUrl,
    required String countryName,
    bool isSelected = false}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.bgTextFieldColor,
      borderRadius: BorderRadius.circular(8.sp),
      border: isSelected
          ? Border.all(
              color: AppColors.primaryColor,
              width: 1.5,
            )
          : null,
    ),
    child: ListTile(
      minVerticalPadding: 25,
      leading: SizedBox(
        width: 30.sp,
        height: 30.sp,
        child: Padding(
          padding: EdgeInsets.all(2.sp),
          child: Image.network(
            flagUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: customText(
        countryName,
        fontSize: 4.f,
        fontWeight: FontWeight.bold,
      ),
      trailing: isSelected
          ? Icon(
              Icons.check,
              size: 12.sp,
              color: AppColors.primaryColor,
            )
          : null,
    ),
  );
}

PreferredSizeWidget progressAppbar({required double percentage}) {
  return AppBar(
    title: GFProgressBar(
      alignment: MainAxisAlignment.center,
      backgroundColor: AppColors.bgTextFieldColor,
      progressBarColor: AppColors.primaryColor,
      width: 50.w,
      lineHeight: 10,
      percentage: percentage,
    ),
    centerTitle: true,
  );
}
