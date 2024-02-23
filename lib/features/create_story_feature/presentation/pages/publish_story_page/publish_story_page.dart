import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/widgets/custom_text_field_drop_down.dart';
import 'package:news_line_app/features/create_story_feature/presentation/pages/publish_story_page/add_tag_cubit/add_tag_cubit.dart';
import 'package:news_line_app/features/create_story_feature/presentation/widgets/removable_tag_button.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../config/app_colors.dart';
import '../../../../../core/utils/gaps.dart';
import '../../../../../core/widgets/widgets.dart';

class PublishStoryPage extends StatefulWidget {
  const PublishStoryPage({super.key});

  @override
  State<PublishStoryPage> createState() => _PublishStoryPageState();
}

class _PublishStoryPageState extends State<PublishStoryPage> {
  late String title;
  late String storyImage;
  final tagEditController = TextEditingController();
  final topicList = [
    'Technology',
    'Health',
    'Scince',
    'Sport',
    'Politicts',
    'Finance',
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    title = arguments['title']!;
    storyImage = arguments['storyImage']!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: customText(
              'Publish',
              fontSize: 7,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.w,
                height: 25.h,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.sp),
                ),
                child: Image.file(
                  File(storyImage),
                  fit: BoxFit.cover,
                ),
              ),
              gapH4,
              customText(
                title,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              gapH4,
              Divider(
                color: Colors.grey.withOpacity(0.4),
              ),
              gapH4,
              customText(
                'Select Topic',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              gapH4,
              CustomTextFieldDropDown(
                itemList: topicList,
                hintText: 'Select a topic',
                onValueSelected: (topic) {
                  debugPrint('the selected topic is:$topic');
                },
              ),
              gapH4,
              customText(
                'Add Tags',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              gapH4,
              CustomTextField(
                controller: tagEditController,
                hintText: 'Type tag',
                sufficxIcon: const Icon(Icons.done),
                onSuffixButtonPressed: () {
                  if (tagEditController.text.isNotEmpty) {
                    context.read<AddTagCubit>().addTag(tagEditController.text);
                    tagEditController.clear();
                  }
                },
                onChangeValue: (value) {},
              ),
              gapH4,
              BlocBuilder<AddTagCubit, AddTagState>(
                builder: (context, state) {
                  return Wrap(
                    spacing: 4.sp,
                    runSpacing: 4.sp,
                    children: state.tags
                        .map(
                          (tag) => RemovebleTagButton(
                            title: tag,
                            onRemovePressed: () {
                              debugPrint('on removed pressed');
                              context.read<AddTagCubit>().removeTag(tag);
                            },
                          ),
                        )
                        .toList(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
