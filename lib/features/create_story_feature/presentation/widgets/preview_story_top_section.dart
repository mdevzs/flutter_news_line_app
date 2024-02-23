import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/gaps.dart';
import '../../../discover_feature/presentation/widgets/network_image.dart';

class PreviewStoryTopSection extends StatelessWidget {
  final String storyCoverImage;
  final String storyTitle;
  final String? creatorProfileImage;
  final String creatorFullName;
  const PreviewStoryTopSection({
    super.key,
    required this.storyCoverImage,
    required this.storyTitle,
    required this.creatorProfileImage,
    required this.creatorFullName,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint(creatorProfileImage);
    return Column(
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
            File(storyCoverImage),
            fit: BoxFit.cover,
          ),
        ),
        gapH4,
        customText(
          storyTitle,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        gapH4,
        Row(
          children: [
            ClipOval(
              child: SizedBox(
                width: 15.sp,
                height: 15.sp,
                child: AppNetworkImage(
                  url: creatorProfileImage,
                  errorAsset: AppConstatns.Profile_Picture_ASSET,
                ),
              ),
            ),
            gapW4,
            customText(
              creatorFullName,
              fontSize: 7,
            ),
            gapW4,
            customText(
              '.',
              fontSize: 7,
              fontWeight: FontWeight.bold,
            ),
            gapW4,
            customText(
              'You',
              fontSize: 7,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ],
        ),
        gapH4,
        //*bottom section
        Row(
          children: [
            customText(
              '5 mins read',
              fontSize: 6,
            ),
            gapW8,
            customText(
              'Now',
              fontSize: 6,
            ),
            gapW8,
            Row(
              children: [
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 7.sp,
                ),
                gapW4,
                customText('0', fontSize: 6)
              ],
            ),
            gapW8,
            Row(
              children: [
                Image.asset(
                  'assets/icons/comments.png',
                  width: 6.sp,
                ),
                gapW4,
                customText('0', fontSize: 6),
              ],
            ),
          ],
        )
      ],
    );
  }
}
