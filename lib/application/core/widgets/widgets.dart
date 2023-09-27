import 'package:flutter/material.dart';
import 'package:news_line_app/app_colors.dart';
import 'package:sizer_pro/sizer.dart';

Widget customText(String text,
    {Color color = Colors.black,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    int? maxLines,
    TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize.f,
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
    maxLines: maxLines,
  );
}

Widget appButton(
  String text, {
  required double width,
  required double height,
  EdgeInsetsGeometry padding = const EdgeInsets.all(4),
  double fontSize = 12,
  Color bgColor = AppColors.primaryColor,
  Color textColor = Colors.white,
  required Function() onButtonPress,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
      ),
      minimumSize: Size(width.w, height.h),
      padding: padding,
    ),
    onPressed: onButtonPress,
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize.f,
        color: textColor,
      ),
    ),
  );
}

Widget appIconButton({
  required String icon,
  required String text,
}) {
  return TextButton.icon(
    onPressed: () {},
    icon: Image.asset(
      icon,
      width: 10.sp,
    ),
    label: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 7.f,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
    ),
  );
}
