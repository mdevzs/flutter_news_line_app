import 'package:flutter/material.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/search_page_widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../profile_feature/domain/entities/profile_entity.dart';

class ProfilePageBody extends StatefulWidget {
  final ProfileEntity profile;
  final bool isCurrentUserProifle;
  const ProfilePageBody({
    super.key,
    required this.profile,
    required this.isCurrentUserProifle,
  });

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.sp),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountsSectionItem(
              isCurrentUserProfile: widget.isCurrentUserProifle,
              account: UserEntity(
                id: widget.profile.id,
                fullName: widget.profile.fullName,
                username: widget.profile.username,
                email: widget.profile.email,
                phone: widget.profile.phone,
                profileImage: widget.profile.profileImage,
                bio: widget.profile.bio,
                gender: widget.profile.gender,
                dateOfBirth: widget.profile.dateOfBirth,
                userType: widget.profile.userType,
                token: '',
                isFollowing: widget.profile.isFollowing,
              ),
            ),
            gapH4,
            customText(
              widget.profile.bio ?? '',
              fontSize: 9,
            ),
            gapH4,
            SizedBox(
              height: 6.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitileSubtitleWidget(
                    title: widget.profile.storiesCount.toString(),
                    subtitle: 'Stories',
                  ),
                  const VerticalDivider(),
                  TitileSubtitleWidget(
                    title: widget.profile.followersCount.toString(),
                    subtitle: 'Followers',
                  ),
                  const VerticalDivider(),
                  TitileSubtitleWidget(
                    title: widget.profile.followingCount.toString(),
                    subtitle: 'Following',
                  ),
                ],
              ),
            ),
            const Divider(),
            gapH4,
            Column(
              children: widget.profile.userNews
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
