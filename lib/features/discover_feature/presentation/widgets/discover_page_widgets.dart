import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_entity.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/bloc/discover_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/news_detail_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class DiscoverPageBody extends StatelessWidget {
  final DiscoverEntity discoverEntity;
  const DiscoverPageBody({
    super.key,
    required this.discoverEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: SingleChildScrollView(
        child: Column(
          children: [
            viewMore(
              title: "This week's Top Stories",
              onPressed: () {},
            ),
            gapH4,
            SizedBox(
              height: 43.h,
              child: ListView.builder(
                  itemCount: discoverEntity.topNews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 6.sp),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              AppRoutes.News_Details_ROUTE,
                              arguments: {
                                'newsId':
                                    discoverEntity.topNews[index].id.toString(),
                              });
                        },
                        child: trendingNewsListItem(
                          trendingNew: discoverEntity.topNews[index],
                        ),
                      ),
                    );
                  }),
            ),
            gapH8,
            viewMore(
              title: "Popular Official Publishers",
              onPressed: () {},
            ),
            gapH4,
            SizedBox(
              height: 17.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: discoverEntity.popularPublishers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 6.sp),
                      child: OfficialPublisherAuthorItem(
                        publisher: discoverEntity.popularPublishers[index],
                      ),
                    );
                  }),
            ),
            gapH8,
            viewMore(
              title: "Popular Authors",
              onPressed: () {},
            ),
            gapH4,
            SizedBox(
              height: 17.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: discoverEntity.popularAuthors.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 6.sp),
                      child: OfficialPublisherAuthorItem(
                        publisher: discoverEntity.popularAuthors[index],
                      ),
                    );
                  }),
            ),
            gapH8,
            viewMore(
              title: "Recommendation For You",
              onPressed: () {},
            ),
            gapH4,
            SizedBox(
              height: 45.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: discoverEntity.recommandedNews.length > 4
                      ? 4
                      : discoverEntity.recommandedNews.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: 6.sp,
                        bottom: 8.sp,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              AppRoutes.News_Details_ROUTE,
                              arguments: {
                                'newsId': discoverEntity
                                    .recommandedNews[index].id
                                    .toString(),
                              });
                        },
                        child: trendingNewsListItem(
                          trendingNew: discoverEntity.recommandedNews[index],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class OfficialPublisherAuthorItem extends StatefulWidget {
  final UserEntity publisher;
  const OfficialPublisherAuthorItem({
    super.key,
    required this.publisher,
  });

  @override
  State<OfficialPublisherAuthorItem> createState() =>
      _OfficialPublisherAuthorItemState();
}

class _OfficialPublisherAuthorItemState
    extends State<OfficialPublisherAuthorItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: SizedBox(
            width: 25.sp,
            height: 25.sp,
            child: Image.network(
              widget.publisher.profileImage ?? '',
              fit: BoxFit.fill,
              errorBuilder: (context, object, stackTrace) {
                return Image.asset('assets/icons/profile.png');
              },
            ),
          ),
        ),
        gapH2,
        customText(
          widget.publisher.fullName,
          fontSize: 6,
          fontWeight: FontWeight.bold,
        ),
        FollowingButton(
          hight: 7,
          fontSize: 3,
          isFollowing: widget.publisher.isFollowing ?? false,
          onPressed: () {
            debugPrint('follow button pressed');
            context.read<DiscoverBloc>().add(
                  DiscoverEvent.followAuthor(
                    widget.publisher.id.toString(),
                  ),
                );
          },
        ),
      ],
    );
  }
}
