import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/blocs/reply_button_bloc/reply_button_bloc.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/comments_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/comments_status.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/reply_comment_cubit/reply_comment_cubit.dart';
import 'package:sizer_pro/sizer.dart';

import 'news_detail_widgets.dart';

class SendCommentWidget extends StatefulWidget {
  final FocusNode focusNode;
  final String newsId;
  final int selectedTabIndex;

  const SendCommentWidget({
    super.key,
    required this.focusNode,
    required this.selectedTabIndex,
    required this.newsId,
  });

  @override
  State<SendCommentWidget> createState() => _SendCommentWidgetState();
}

class _SendCommentWidgetState extends State<SendCommentWidget> {
  final sendCommentController = TextEditingController();

  @override
  void initState() {
    debugPrint('send comment init method');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReplyCommentCubit, ReplyCommentState>(
      builder: (context, replyState) {
        return Container(
          height: replyState.isReplying ? 15.h : 10.h,
          //width: 90.w,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: replyState.isReplying,
                child: Container(
                  width: 100.w,
                  height: 5.h,
                  color: Colors.grey,
                  padding: EdgeInsets.all(4.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: customText(
                          'Replying to ${replyState.username}',
                          fontSize: 6,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            context.read<ReplyCommentCubit>().cancelReply();
                          },
                          child: const Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 80.w,
                        child: appTextFormField(
                          controller: sendCommentController,
                          focusNode: widget.focusNode,
                          hintText: 'Add a comment',
                          onChangeValue: (value) {},
                          validator: FormBuilderValidators.required(),
                        ),
                      ),
                      BlocBuilder<CommentsBloc, CommentsState>(
                        builder: (context, state) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size(23.sp, 23.sp),
                              backgroundColor: AppColors.primaryColor,
                            ),
                            child: state.addCommentState.maybeWhen(loading: () {
                              return const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              );
                            }, orElse: () {
                              debugPrint('or elese called');
                              return const Icon(
                                Icons.send_outlined,
                                color: Colors.white,
                              );
                            }),
                            onPressed: () {
                              debugPrint(
                                'the parent id is: ${replyState.parentId}',
                              );
                              debugPrint(
                                'the slected tab index is: ${widget.selectedTabIndex}',
                              );
                              context.read<CommentsBloc>().add(
                                    CommentsEvent.sendComment(
                                      sendCommentController.text,
                                      replyState.parentId,
                                      widget.selectedTabIndex,
                                      widget.newsId,
                                    ),
                                  );
                              WidgetsBinding.instance.addPostFrameCallback(
                                (timeStamp) {
                                  sendCommentController.text = '';
                                  context
                                      .read<ReplyCommentCubit>()
                                      .cancelReply();
                                },
                              );
                            },
                          );
                        },
                      )
                    ]),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CommentPageBody extends StatefulWidget {
  final CommentsStatus commentsStatus;
  final List<CommentsEntity> comments;
  final FocusNode focusNode;
  final String newsId;
  const CommentPageBody({
    super.key,
    required this.commentsStatus,
    required this.comments,
    required this.focusNode,
    required this.newsId,
  });

  @override
  State<CommentPageBody> createState() => _CommentPageBodyState();
}

class _CommentPageBodyState extends State<CommentPageBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: widget.commentsStatus.when(
        loading: () {
          debugPrint('comments loading');
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        success: () {
          return ListView.custom(
            padding: EdgeInsets.only(
                left: 6.sp, right: 6.sp, top: 6.sp, bottom: 10.h),
            childrenDelegate: SliverChildBuilderDelegate(
              childCount: widget.comments.length,
              (context, index) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ReplyButtonBloc(),
                  ),
                ],
                child: CommentWidget(
                  key: ValueKey('id-${widget.comments[index].id}'),
                  commentsEntity: widget.comments[index],
                  onReplyButtonPressed: (commentId, username) {
                    //parentId = commentId;
                    widget.focusNode.requestFocus();
                    context.read<ReplyCommentCubit>().replyComment(
                          username,
                          commentId,
                        );
                  },
                ),
              ),
              findChildIndexCallback: (key) {
                final ValueKey<String> valueKey = key as ValueKey<String>;
                final index = widget.comments.indexWhere(
                  (comment) => 'id-${comment.id}' == valueKey.value,
                );
                return index;
              },
            ),
          );
        },
        error: (errorMessage) {
          debugPrint('comments error message: $errorMessage');
          return Center(
            child: errorWidget(
              errorMessage: errorMessage,
              onTryAgainPressed: () {
                context.read<CommentsBloc>().add(
                      CommentsEvent.getAllComments(widget.newsId),
                    );
              },
            ),
          );
        },
      ),
    );
  }
}
