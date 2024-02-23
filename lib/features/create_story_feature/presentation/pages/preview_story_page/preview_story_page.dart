import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:news_line_app/core/page_arguments/preview_strory_page_arguments.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:news_line_app/core/utils/injection.dart';
import 'package:news_line_app/features/create_story_feature/presentation/widgets/preview_story_top_section.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../config/app_colors.dart';
import '../../../../../core/widgets/widgets.dart';

class PreviewStoryPage extends StatefulWidget {
  const PreviewStoryPage({
    super.key,
  });

  @override
  State<PreviewStoryPage> createState() => _PreviewStoryPageState();
}

class _PreviewStoryPageState extends State<PreviewStoryPage> {
  late PreviewStoryPageArguments pageArguments;
  final profileImage = sl.get<StorageService>().userProfileImage();
  final fullName = sl.get<StorageService>().userFullName();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments =
        ModalRoute.of(context)?.settings.arguments as PreviewStoryPageArguments;
    //debugPrint(arguments.title);
    pageArguments = arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(
          'Preview',
          fontSize: 8,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.Publish_Story_ROUTE,
                  arguments: {
                    'storyImage': pageArguments.storyCoverImage,
                    'title': pageArguments.title,
                  });
            },
            child: customText(
              'Continue',
              fontSize: 7,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Column(
            children: [
              SizedBox(
                height: 45.h,
                child: PreviewStoryTopSection(
                  storyCoverImage: pageArguments.storyCoverImage,
                  storyTitle: pageArguments.title,
                  creatorProfileImage: profileImage,
                  creatorFullName: fullName,
                ),
              ),
              HtmlWidget(
                pageArguments.storyAsHtml,
                customWidgetBuilder: (element) {
                  debugPrint('element is ${element.toString()}');
                  if (element.localName == 'img') {
                    // debugPrint(
                    //     'the image from html:${element.attributes['src']}');
                    return Image.file(
                      File(
                        element.attributes['src'].toString(),
                      ),
                      width: 100.w,
                      height: 30.h,
                      fit: BoxFit.cover,
                    );
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
