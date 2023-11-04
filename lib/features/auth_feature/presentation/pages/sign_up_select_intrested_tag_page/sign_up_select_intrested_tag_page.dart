import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_intrested_tag_page/bloc/sign_up_select_intrested_tag_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/widgets/auth_features_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class SignUpSelectIntrestedTagPage extends StatelessWidget {
  const SignUpSelectIntrestedTagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: progressAppbar(percentage: 0.4),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Column(
              children: [
                textWithIcon(
                  text: 'Customize your news feed',
                  icon: 'assets/icons/glowing_star.png',
                ),
                customText(
                  'Tell us what you\'re interested in to tailor your news experience. Dont worry. you can always update your preferences later.',
                  fontSize: 8,
                ),
                gapH12,
                BlocBuilder<SignUpSelectIntrestedTagBloc,
                    SignUpSelectIntrestedTagState>(
                  builder: (context, state) {
                    return Expanded(
                      child: SizedBox(
                        child: state.tagsState.when(
                          initial: () {
                            context.read<SignUpSelectIntrestedTagBloc>().add(
                                const SignUpSelectIntrestedTagEvent
                                    .getAllTags());
                            return null;
                          },
                          loading: () {
                            debugPrint('loading state');
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          success: (tags) {
                            debugPrint('succes state');
                            return GridView.builder(
                              itemCount: tags.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 4.sp,
                                mainAxisSpacing: 4.sp,
                              ),
                              itemBuilder: (context, index) {
                                final tag = tags[index];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    context
                                        .read<SignUpSelectIntrestedTagBloc>()
                                        .add(
                                          SignUpSelectIntrestedTagEvent
                                              .selectIntrestedTag(tag.id),
                                        );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.bgTextFieldColor,
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: state.selectedIntrestedTags
                                              .contains(tag.id)
                                          ? Border.all(
                                              width: 1.5,
                                              color: AppColors.primaryColor,
                                            )
                                          : null,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.network(tag.image, width: 20.sp),
                                        gapH4,
                                        customText(tag.name, fontSize: 7)
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          error: (message) {
                            debugPrint(message);
                            return errorWidget(
                              errorMessage: message,
                              onTryAgainPressed: () {
                                context
                                    .read<SignUpSelectIntrestedTagBloc>()
                                    .add(
                                      const SignUpSelectIntrestedTagEvent
                                          .getAllTags(),
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
              onButtonPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
