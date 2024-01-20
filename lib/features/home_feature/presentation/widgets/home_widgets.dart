import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/creator_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/home_page/bloc/home_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/home_page/bloc/recent_stories_status.dart';
import 'package:sizer_pro/sizer.dart';

PreferredSizeWidget homeAppBar({
  String? image,
  required String fullName,
}) {
  return AppBar(
    toolbarHeight: 40.sp,
    title: Row(
      children: [
        ClipOval(
          child: SizedBox(
            width: 25.sp,
            height: 25.sp,
            child: image != null
                ? Image.network(
                    image,
                    width: 20.sp,
                    fit: BoxFit.fill,
                  )
                : Image.asset(
                    'assets/icons/profile.png',
                  ),
          ),
        ),
        gapW8,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWithIcon(
              text: 'welcome back',
              fontSize: 9,
              iconSize: 9,
              fontColor: Colors.black54,
              icon: 'assets/icons/waving_hand.png',
              spaceBetween: 1,
            ),
            customText(
              fullName,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        const Spacer(),
        IconButton(
          style: IconButton.styleFrom(
            padding: EdgeInsets.all(5.sp),
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            size: 12.sp,
          ),
        )
      ],
    ),
  );
}

Widget trendingNewsSectionHomePage({
  required BuildContext context,
  required List<NewsEntity> trendingNews,
  required Function(int newsId) onItemPressed,
}) {
  return Column(
    children: [
      viewMore(
          title: 'Trending',
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.Trending_News_ROUTE);
          }),
      gapH8,
      SizedBox(
        height: SizerUtil.height < 640 ? 50.h : 45.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: trendingNews.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => onItemPressed(trendingNews[index].id),
              child: Padding(
                padding: EdgeInsets.only(right: 8.sp),
                child: trendingNewsListItem(
                  trendingNew: trendingNews[index],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}

Widget viewMore({required String title, required Function() onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: customText(
            title,
            fontSize: 9,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        textWithIcon(
          text: 'View All',
          fontSize: 8,
          fontColor: AppColors.primaryColor,
          iconData: Icons.arrow_forward_ios_rounded,
          iconDataColor: AppColors.primaryColor,
        )
      ],
    ),
  );
}

Widget trendingNewsListItem({
  double width = 70,
  required NewsEntity trendingNew,
  bool showReadTime = false,
}) {
  return SizedBox(
    width: width.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width.w,
          height: SizerUtil.height > 670 ? 23.h : 20.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                trendingNew.coverImage ?? '',
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(5.sp),
          ),
        ),
        gapH4,
        customText(
          trendingNew.title,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        creatorProfileSection(
          creator: trendingNew.creator,
        ),
        Row(
          children: [
            Expanded(
              child: bSectionListItem(
                trendingNew,
                showReadTime: showReadTime,
              ),
            ),
            gapW8,
            if (!showReadTime)
              InkWell(
                onTap: () {},
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(2.sp),
                  child: Icon(
                    Icons.share,
                    size: 8.sp,
                  ),
                ),
              ),
            gapW4,
            if (!showReadTime)
              InkWell(
                onTap: () {},
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(1.5.sp),
                  child: Image.asset(
                    'assets/icons/menu.png',
                    width: 10.sp,
                  ),
                ),
              )
          ],
        )
      ],
    ),
  );
}

ConstraintLayout bottomSectionListItem(NewsEntity news) {
  ConstraintId textId = ConstraintId('textId');
  ConstraintId viewsId = ConstraintId('viewsId');
  ConstraintId commentId = ConstraintId('commentId');
  return ConstraintLayout(
    children: [
      customText(
        news.createdAt,
        fontSize: 5,
      ).applyConstraint(
        id: textId,
        left: parent.left,
        top: parent.top,
      ),
      Row(
        children: [
          Icon(
            Icons.remove_red_eye_outlined,
            size: 7.sp,
          ),
          gapW4,
          customText(news.viewsCount, fontSize: 5)
        ],
      ).applyConstraint(
        id: viewsId,
        left: textId.right,
        right: commentId.left,
        top: parent.top,
      ),
      Row(
        children: [
          Image.asset(
            'assets/icons/comments.png',
            width: 6.sp,
          ),
          gapW4,
          customText(news.commentCounts, fontSize: 5)
        ],
      ).applyConstraint(
        id: commentId,
        right: parent.right,
        top: parent.top,
      ),
    ],
  );
}

Widget recentStoriesSection({
  required BuildContext context,
  required HomeEntity entity,
  required int selectedTagId,
  required RecentStoriesStatus recentStState,
}) {
  return Column(
    children: [
      viewMore(
          title: 'Recent Stories',
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.Recent_News_ROUTE);
          }),
      gapH4,
      SizedBox(
        height: 5.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: entity.tags?.length,
          itemBuilder: (context, index) {
            bool isSelected = selectedTagId == index;
            return GestureDetector(
              onTap: () {
                context.read<HomeBloc>().add(HomeEvent.selectTag(index));
                context.read<HomeBloc>().add(
                      HomeEvent.getRecentStories(
                        entity.tags![index].tag!.toLowerCase(),
                      ),
                    );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.sp),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: !isSelected
                        ? Colors.transparent
                        : AppColors.primaryColor,
                    border: !isSelected
                        ? Border.all(color: Colors.grey.withOpacity(0.4))
                        : null,
                  ),
                  child: Center(
                    child: customText(
                      entity.tags?[index].tag ?? '',
                      fontSize: 8,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      recentStState.when(loading: () {
        debugPrint('recent stories loading');
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 30.sp),
          child: const Center(child: CircularProgressIndicator()),
        );
      }, success: (stories) {
        return Column(
          children: stories
              .map(
                (story) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.sp),
                  child: RecentStoriesListItem(
                    recentSt: story,
                  ),
                ),
              )
              .toList(),
        );
      }, error: (error) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.sp),
          child: errorWidget(
              errorMessage: error,
              onTryAgainPressed: () {
                context.read<HomeBloc>().add(
                      HomeEvent.getRecentStories(
                        entity.tags![selectedTagId].tag!.toLowerCase(),
                      ),
                    );
              }),
        );
      }),
    ],
  );
}

class RecentStoriesListItem extends StatefulWidget {
  final NewsEntity recentSt;
  const RecentStoriesListItem({super.key, required this.recentSt});

  @override
  State<RecentStoriesListItem> createState() => _RecentStoriesListItemState();
}

class _RecentStoriesListItemState extends State<RecentStoriesListItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    debugPrint('recent stories rebuild');
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AppRoutes.News_Details_ROUTE, arguments: {
          'newsId': widget.recentSt.id.toString(),
        });
      },
      splashFactory: NoSplash.splashFactory,
      child: SizedBox(
        height: SizerUtil.height < 640 ? 25.h : 22.h,
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customText(
                    widget.recentSt.title,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  creatorProfileSection(creator: widget.recentSt.creator),
                  bottomSectionListItem(widget.recentSt),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45.sp,
                    height: 35.sp,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        // image: NetworkImage(recentSt.coverImage ?? ''),
                        image: CachedNetworkImageProvider(
                            widget.recentSt.coverImage ?? '',
                            errorListener: (e) {
                          if (e is SocketException) {
                            debugPrint(
                                'Error with ${e.address} and message ${e.message}');
                          } else {
                            debugPrint('Image Exception is: ${e.runtimeType}');
                          }
                        }),
                      ),
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        customBorder: const CircleBorder(),
                        child: Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Icon(
                            Icons.share,
                            size: 8.sp,
                          ),
                        ),
                      ),
                      gapW4,
                      PopUpMen(
                        menuList: [
                          popupMenuItem(
                              icon: Icons.bookmark_outline,
                              title: 'Save to Bookmark',
                              onTap: () {}),
                          popupMenuItem(
                              icon: Icons.cancel_presentation_rounded,
                              title: 'Hide this',
                              onTap: () {}),
                          popupMenuItem(
                              icon: Icons.report_gmailerrorred_sharp,
                              title: 'Report this',
                              onTap: () {}),
                          popupMenuItem(
                              icon: Icons.message_outlined,
                              title: 'Send Feedback',
                              haveDivider: false,
                              onTap: () {}),
                        ],
                        icon: Padding(
                          padding: EdgeInsets.all(1.5.sp),
                          child: Image.asset(
                            'assets/icons/menu.png',
                            width: 10.sp,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget creatorProfileSection({
  required CreatorEntity creator,
}) {
  return ListTile(
    contentPadding: const EdgeInsets.all(0),
    leading: ClipOval(
      child: SizedBox(
        width: 10.sp,
        height: 10.sp,
        // child: Image.network(
        //   creator.profileImage ?? '',
        //   fit: BoxFit.fill,
        // ),
        child: CachedNetworkImage(
          imageUrl: creator.profileImage ?? '',
          fit: BoxFit.fill,
          errorListener: (e) {
            if (e is SocketException) {
              debugPrint('Error with ${e.address} and message ${e.message}');
            } else {
              debugPrint('Image Exception is: ${e.runtimeType}');
            }
          },
          errorWidget: (context, url, error) {
            return Image.asset('assets/icons/profile.png');
          },
        ),
      ),
    ),
    title: customText(
      creator.fullName,
      fontSize: 3.sp,
    ),
  );
}

Widget bSectionListItem(
  NewsEntity news, {
  bool showReadTime = false,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      if (showReadTime)
        customText(
          news.readTime,
          fontSize: 5,
        ),
      customText(
        news.createdAt,
        fontSize: 5,
      ),
      Row(
        children: [
          Icon(
            Icons.remove_red_eye_outlined,
            size: 7.sp,
          ),
          gapW4,
          customText(news.viewsCount, fontSize: 5)
        ],
      ),
      Row(
        children: [
          Image.asset(
            'assets/icons/comments.png',
            width: 6.sp,
          ),
          gapW4,
          customText(news.commentCounts, fontSize: 5)
        ],
      ),
    ],
  );
}
