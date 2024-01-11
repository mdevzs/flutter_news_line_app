import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/add_comment_status.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/comments_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/comment_page_cubit/comment_page_cubit.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/reply_comment_cubit/reply_comment_cubit.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/comments_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late FocusNode _sendCommentFocusNode;
  String newsId = '-1';
  String commentsCount = '0';

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    _sendCommentFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final args =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      debugPrint('news id is: ${args['newsId']}');
      newsId = args['newsId']!;
      commentsCount = args['commentsCount']!;
      context.read<CommentPageCubit>().getNewsId(newsId);
      context.read<CommentsBloc>().add(
            CommentsEvent.getAllComments(newsId),
          );
    });
    //debugPrint('the selected tab id: ${_tabController.index}');
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _sendCommentFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('comment page rebuild');
    final selectedTabIndex =
        context.watch<CommentPageCubit>().state.seletectedTabIndex;
    final newsId = context.read<CommentPageCubit>().state.newsId;
    return Scaffold(
      appBar: AppBar(
        title: customText(
          'Comments($commentsCount)',
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => ReplyCommentCubit(),
        child: Stack(
          children: [
            Column(
              children: [
                TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextStyle(fontSize: 8.f),
                  onTap: (index) {
                    final preIndex = context
                        .read<CommentPageCubit>()
                        .state
                        .seletectedTabIndex;
                    context.read<CommentPageCubit>().toggleTab(index);
                    if (preIndex != index) {
                      context.read<CommentsBloc>().add(
                            CommentsEvent.getAllComments(newsId),
                          );
                    }
                  },
                  tabs: const [
                    Tab(
                      text: 'Top',
                    ),
                    Tab(
                      text: 'Newest',
                    ),
                  ],
                ),
                Expanded(
                  child: BlocBuilder<CommentsBloc, CommentsState>(
                    buildWhen: (oldState, newState) {
                      if (newState.addCommentState ==
                          const AddCommentStatus.loading()) {
                        return false;
                      }
                      return true;
                    },
                    builder: (context, state) {
                      return TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          CommentPageBody(
                            commentsStatus: state.commentsSatus,
                            comments: state.topComments.toList(),
                            focusNode: _sendCommentFocusNode,
                            newsId: newsId,
                          ),
                          CommentPageBody(
                            commentsStatus: state.commentsSatus,
                            comments: state.newestComments.toList(),
                            focusNode: _sendCommentFocusNode,
                            newsId: newsId,
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: SendCommentWidget(
                focusNode: _sendCommentFocusNode,
                newsId: newsId,
                selectedTabIndex: selectedTabIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
