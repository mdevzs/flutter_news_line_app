import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_follow_official_author/bloc/sign_up_follow_official_author_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/widgets/auth_features_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../core/utils/gaps.dart';

class SignUpFollowOfficialAuthorPage extends StatelessWidget {
  const SignUpFollowOfficialAuthorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: progressAppbar(percentage: 0.6),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Column(
              children: [
                textWithIcon(
                  text: 'Follow some official publicshers',
                  icon: 'assets/icons/heart.png',
                  iconSize: 12,
                ),
                customText(
                  'Follow some official publishers that you may know and like to get updates on their stories.',
                  fontSize: 8,
                ),
                gapH12,
                BlocBuilder<SignUpFollowOfficialAuthorBloc,
                    SignUpFollowOfficialAuthorState>(
                  builder: (context, state) {
                    return Expanded(
                      child: SizedBox(
                        child: state.getAllOfficialAuthorState.when(
                          initial: () {
                            context.read<SignUpFollowOfficialAuthorBloc>().add(
                                  const SignUpFollowOfficialAuthorEvent
                                      .getAllOfficialAuthors(),
                                );
                            return null;
                          },
                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          success: (officialAuthor) {
                            return ListView.builder(
                              itemCount: officialAuthor.length,
                              itemBuilder: (context, index) {
                                return officialAuthorListItem(
                                  profileImage:
                                      officialAuthor[index].profileImage!,
                                  offciealName: officialAuthor[index].fullName,
                                  isSelected: state
                                      .selectedOfficialAuthorToFollow
                                      .contains(
                                    officialAuthor[index].id,
                                  ),
                                  onFollowButtonPressed: () {
                                    context
                                        .read<SignUpFollowOfficialAuthorBloc>()
                                        .add(
                                          SignUpFollowOfficialAuthorEvent
                                              .followOfficialAuthor(
                                                  officialAuthor[index].id),
                                        );
                                  },
                                );
                              },
                            );
                          },
                          error: (message) {
                            return errorWidget(
                              errorMessage: message,
                              onTryAgainPressed: () {
                                context
                                    .read<SignUpFollowOfficialAuthorBloc>()
                                    .add(
                                      const SignUpFollowOfficialAuthorEvent
                                          .getAllOfficialAuthors(),
                                    );
                              },
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: continueSection(
              onButtonPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRoutes.SIGN_UP_Enable_Notification_ROUTE);
              },
            ),
          )
        ],
      ),
    );
  }
}
