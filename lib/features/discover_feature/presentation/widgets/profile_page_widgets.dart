import 'package:flutter/material.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/profile_entity.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/search_page_widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class ProfilePageBody extends StatelessWidget {
  final ProfileEntity profile;
  const ProfilePageBody({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.sp),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountsSectionItem(
              account: UserEntity(
                id: profile.id,
                fullName: profile.fullName,
                username: profile.username,
                email: profile.email,
                phone: profile.phone,
                profileImage: profile.profileImage,
                gender: profile.gender,
                dateOfBirth: profile.dateOfBirth,
                userType: profile.userType,
                token: '',
                isFollowing: profile.isFollowing,
              ),
            ),
            gapH4,
            customText(
              profile.bio ?? '',
              fontSize: 9,
            ),
            gapH4,
            SizedBox(
              height: 6.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitileSubtitleWidget(
                    title: profile.storiesCount.toString(),
                    subtitle: 'Stories',
                  ),
                  const VerticalDivider(),
                  TitileSubtitleWidget(
                    title: profile.followersCount.toString(),
                    subtitle: 'Followers',
                  ),
                  const VerticalDivider(),
                  TitileSubtitleWidget(
                    title: profile.followingCount.toString(),
                    subtitle: 'Following',
                  ),
                ],
              ),
            ),
            const Divider(),
            gapH4,
            Column(
              children: profile.userNews
                  .map(
                    (recentSt) => InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.News_Details_ROUTE,
                          arguments: {
                            'newsId': recentSt.id.toString(),
                          },
                        );
                      },
                      splashFactory: NoSplash.splashFactory,
                      child: RecentStoriesListItem(
                        recentSt: recentSt,
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

class TitileSubtitleWidget extends StatelessWidget {
  final String title, subtitle;
  const TitileSubtitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customText(
          title,
          fontSize: 8,
          fontWeight: FontWeight.bold,
        ),
        customText(
          subtitle,
          fontSize: 7,
        ),
      ],
    );
  }
}
