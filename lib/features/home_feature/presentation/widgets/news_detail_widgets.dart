import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/comments_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/comment_page_cubit/comment_page_cubit.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer_pro/sizer.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/blocs/reply_button_bloc/reply_button_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/creator_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_details_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';
import '../../../../core/widgets/widgets.dart';

PreferredSizeWidget newsDetailPageAppbar(BuildContext context) {
  return AppBar(
    actions: [
      IconWidget(
        icon: Icons.bookmark_outline,
        onTap: () {},
      ),
      gapW4,
      IconWidget(
        icon: Icons.share_outlined,
        onTap: () async {
          await Share.shareWithResult('NewsLineApp');
        },
      ),
      gapW4,
      PopUpMen(
        menuList: [
          popupMenuItem(
              icon: Icons.text_snippet_outlined,
              title: 'Display settings',
              onTap: () {
                displaySettingsButtomSheet(context);
              }),
          popupMenuItem(
              icon: Icons.report_gmailerrorred_outlined,
              title: 'Report',
              onTap: () {}),
          popupMenuItem(
              icon: Icons.message_outlined,
              title: 'Send Feedback',
              haveDivider: false,
              onTap: () {}),
        ],
        icon: Image.asset(
          'assets/icons/menu.png',
          width: 10.sp,
        ),
      )
    ],
  );
}

class NewsDetailsPageBody extends StatelessWidget {
  final NewsDetailsEntity newsDetailsEntity;
  const NewsDetailsPageBody({
    Key? key,
    required this.newsDetailsEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 45.h,
            child: trendingNewsListItem(
              width: 100,
              showReadTime: true,
              trendingNew: NewsEntity(
                id: newsDetailsEntity.id,
                title: newsDetailsEntity.title,
                coverImage: newsDetailsEntity.coverImage,
                description: newsDetailsEntity.description,
                readTime: newsDetailsEntity.readTime,
                viewsCount: newsDetailsEntity.viewsCount,
                isTrending: newsDetailsEntity.isTrending,
                creatorId: newsDetailsEntity.creatorId,
                createdAt: newsDetailsEntity.createdAt,
                commentCounts: newsDetailsEntity.commentsCount.toString(),
                creator: newsDetailsEntity.creator,
              ),
            ),
          ),
          gapH8,
          customText(
            newsDetailsEntity.description ?? '',
            fontSize: 10,
          ),
          gapH8,
          Wrap(
            spacing: 4.sp,
            runSpacing: 4.sp,
            children: newsDetailsEntity.tagNews != null
                ? newsDetailsEntity.tagNews!
                    .map(
                      (e) => MyChip(text: e.tag.tag ?? ''),
                    )
                    .toList()
                : [],
          ),
          gapH8,
          Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
          gapH8,
          NewsAuthorSection(
            creator: newsDetailsEntity.creator,
            child: FollowingButton(onPressed: () {}),
          ),
          customText(
            newsDetailsEntity.creator.bio,
            fontSize: 7,
          ),
          gapH8,
          Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
          gapH8,
          viewMore(
            title: '${newsDetailsEntity.commentsCount} comments',
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.Comments_ROUTE, arguments: {
                'newsId': newsDetailsEntity.id.toString(),
                'commentsCount': newsDetailsEntity.commentsCount.toString(),
              });
            },
          ),
          gapH8,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: newsDetailsEntity.comments.top.length > 3
                ? 3
                : newsDetailsEntity.comments.top.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 4.sp),
                child: BlocProvider(
                  create: (context) => ReplyButtonBloc(),
                  child: CommentWidget(
                    commentsEntity: newsDetailsEntity.comments.top[index],
                    onReplyButtonPressed: (parentId, username) {},
                  ),
                ),
              );
            },
          ),
          gapH4,
          Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
          gapH8,
          viewMore(
            title: 'More from ${newsDetailsEntity.creator.fullName}',
            onPressed: () {},
          ),
          gapH8,
          SizedBox(
            height: SizerUtil.height < 640 ? 50.h : 45.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 8.sp),
                  child: trendingNewsListItem(
                    trendingNew: newsDetailsEntity.userNews[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NewsAuthorSection extends StatelessWidget {
  final CreatorEntity creator;
  final Widget child;
  const NewsAuthorSection({
    Key? key,
    required this.creator,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: SizedBox(
            width: 25.sp,
            height: 25.sp,
            child: Image.network(
              creator.profileImage ?? '',
              fit: BoxFit.fill,
            ),
          ),
        ),
        gapW4,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(
              creator.fullName,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
            gapH2,
            customText(
              '${creator.followersCount} followers',
              fontSize: 7,
            )
          ],
        ),
        const Spacer(),
        child,
      ],
    );
  }
}

class MyChip extends StatelessWidget {
  final String text;
  const MyChip({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.sp, horizontal: 6.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.sp),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: customText(
        text,
        fontSize: 8,
      ),
    );
  }
}

class FollowingButton extends StatefulWidget {
  final double width, hight, fontSize;
  final bool isFollowing;
  final Function() onPressed;
  const FollowingButton({
    super.key,
    this.width = 4,
    this.hight = 9,
    this.fontSize = 4,
    this.isFollowing = false,
    required this.onPressed,
  });

  @override
  State<FollowingButton> createState() => _FollowingButtonState();
}

class _FollowingButtonState extends State<FollowingButton> {
  bool isSelected = false;

  @override
  void initState() {
    isSelected = widget.isFollowing;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onPressed();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(widget.width.w, widget.hight.w),
        backgroundColor: isSelected
            ? Colors.white.withOpacity(0.95)
            : AppColors.primaryColor,
        side: isSelected
            ? const BorderSide(
                color: Colors.grey,
                width: 0.5,
              )
            : null,
        surfaceTintColor: Colors.white,
      ),
      child: customText(
        isSelected ? 'Following' : 'Follow',
        fontSize: widget.fontSize.f,
        color: isSelected ? Colors.black : Colors.white,
      ),
    );
  }
}

class CommentWidget extends StatefulWidget {
  final CommentsEntity commentsEntity;
  final Function(int parentId, String username) onReplyButtonPressed;
  const CommentWidget({
    Key? key,
    required this.commentsEntity,
    required this.onReplyButtonPressed,
  }) : super(key: key);

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget>
    with AutomaticKeepAliveClientMixin {
  bool showReplies = false;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    debugPrint('each comment rebuild');
    //debugPrint(widget.commentsEntity.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipOval(
              child: SizedBox(
                width: 15.sp,
                height: 15.sp,
                child: Image.network(
                  widget.commentsEntity.creator.profileImage ?? '',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            gapW4,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                  widget.commentsEntity.creator.fullName,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
                gapH2,
                customText(
                  widget.commentsEntity.createdAt,
                  fontSize: 7,
                )
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/icons/menu.png',
              width: 12.sp,
            ),
          ],
        ),
        gapH2,
        customText(
          widget.commentsEntity.comment,
          fontSize: 8,
          textAlign: TextAlign.start,
        ),
        gapH4,
        Row(
          children: [
            LikeButtonWidget(
              likeCounts: widget.commentsEntity.likeCounts,
              isLiked: widget.commentsEntity.isLiked,
              commentId: widget.commentsEntity.id,
            ),
            gapW12,
            InkWell(
              onTap: () => widget.onReplyButtonPressed(widget.commentsEntity.id,
                  widget.commentsEntity.creator.fullName),
              borderRadius: BorderRadius.circular(4.sp),
              child: Padding(
                padding: EdgeInsets.all(2.sp),
                child: customText(
                  'Reply',
                  fontSize: 7,
                ),
              ),
            ),
          ],
        ),
        gapH4,
        if (widget.commentsEntity.replies.isNotEmpty)
          TextButton.icon(
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(right: 4.sp),
            ),
            icon: const Icon(Icons.keyboard_arrow_up),
            label: customText(
              'replies',
              fontSize: 7,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            onPressed: () {
              context
                  .read<ReplyButtonBloc>()
                  .add(const ReplyButtonEvent.toggleShowReplies());
            },
          ),
        BlocBuilder<ReplyButtonBloc, ReplyButtonState>(
          builder: (context, state) {
            return Visibility(
              visible: state.showReplies,
              maintainState: true,
              child: Stack(
                children: [
                  Positioned.fill(
                    left: 4.sp,
                    bottom: 4.sp,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const VerticalDivider(),
                      //height: 10.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.sp),
                    child: Column(
                      children: widget.commentsEntity.replies
                          .map(
                            (item) => ReplyCommentWidget(
                              commentsEntity: item,
                              showReplies: state.showReplies,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        )
        //gapH4,
      ],
    );
  }
}

class ReplyCommentWidget extends StatefulWidget {
  final CommentsEntity commentsEntity;
  final bool showReplies;
  const ReplyCommentWidget({
    Key? key,
    required this.commentsEntity,
    required this.showReplies,
  }) : super(key: key);

  @override
  State<ReplyCommentWidget> createState() => _ReplyCommentWidgetState();
}

class _ReplyCommentWidgetState extends State<ReplyCommentWidget> {
  @override
  Widget build(BuildContext context) {
    debugPrint('reply comment rebuilded');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipOval(
              child: SizedBox(
                width: 15.sp,
                height: 15.sp,
                child: Image.network(
                  widget.commentsEntity.creator.profileImage ?? '',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            gapW4,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                  widget.commentsEntity.creator.fullName,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
                gapH2,
                customText(
                  widget.commentsEntity.createdAt,
                  fontSize: 7,
                )
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/icons/menu.png',
              width: 12.sp,
            ),
          ],
        ),
        gapH2,
        customText(
          widget.commentsEntity.comment,
          fontSize: 8,
          textAlign: TextAlign.start,
        ),
        gapH4,
        LikeButtonWidget(
          likeCounts: widget.commentsEntity.likeCounts,
          isLiked: widget.commentsEntity.isLiked,
          commentId: widget.commentsEntity.id,
        ),
        gapH4,
      ],
    );
  }
}

class LikeButtonWidget extends StatefulWidget {
  final int likeCounts;
  final bool isLiked;
  final int commentId;
  const LikeButtonWidget({
    Key? key,
    required this.likeCounts,
    required this.isLiked,
    required this.commentId,
  }) : super(key: key);

  @override
  State<LikeButtonWidget> createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  late bool isLikedByCurrentUser;
  late int likeCounts;

  @override
  void initState() {
    super.initState();
    debugPrint('like init state called');
    isLikedByCurrentUser = widget.isLiked;
    likeCounts = widget.likeCounts;
  }

  @override
  void didUpdateWidget(covariant LikeButtonWidget oldWidget) {
    debugPrint('like didUpdateWidget called');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLikedByCurrentUser = !isLikedByCurrentUser;
          isLikedByCurrentUser ? ++likeCounts : --likeCounts;
        });
        context.read<CommentsBloc>().add(
              CommentsEvent.likeComment(
                widget.commentId,
                context.read<CommentPageCubit>().state.seletectedTabIndex,
              ),
            );
      },
      child: Row(
        children: [
          Image.asset(
            isLikedByCurrentUser
                ? 'assets/icons/heart.png'
                : 'assets/icons/heart_outline.png',
            width: 9.sp,
          ),
          gapW4,
          customText(
            likeCounts.toString(),
            fontSize: 7,
          ),
        ],
      ),
    );
  }
}
