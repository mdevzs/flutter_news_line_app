import 'package:flutter/material.dart';
import 'package:news_line_app/core/widgets/widgets.dart';

PreferredSizeWidget trReNewsPageAppBar(String title) {
  return AppBar(
    title: customText(title,fontSize: 8),
    centerTitle: true,
    actions: [Image.asset('assets/icons/search.png')],
  );
}
