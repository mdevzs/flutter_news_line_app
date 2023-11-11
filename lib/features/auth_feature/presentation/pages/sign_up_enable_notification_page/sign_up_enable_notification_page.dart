import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/app_constants.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/presentation/widgets/auth_features_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import 'bloc/sign_up_enable_notification_bloc.dart';

class SignUpEnableNotificationPage extends StatelessWidget {
  const SignUpEnableNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: progressAppbar(percentage: 0.8),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWithIcon(
                  text: 'Enable notifications',
                  icon: 'assets/icons/notification.png',
                  iconSize: 12,
                ),
                customText(
                  'Stay updated, never miss a story. Receive notifications for breaking news and personalized updates.',
                  fontSize: 8,
                ),
                gapH12,
                BlocBuilder<SignUpEnableNotificationBloc,
                    SignUpEnableNotificationState>(
                  builder: (context, state) {
                    return Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(bottom: 20.sp),
                        itemCount: AppConstatns.enableNotifications.length,
                        itemBuilder: (context, index) {
                          final notifications =
                              AppConstatns.enableNotifications[index];
                          late String notificationTitle;
                          notifications.forEach((key, value) {
                            notificationTitle = key;
                          });
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: customText(
                                    notificationTitle,
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                                Switch(
                                  inactiveTrackColor: Colors.white,
                                  activeTrackColor: AppColors.primaryColor,
                                  value: state.selectedNotifications
                                      .contains(index),
                                  onChanged: (value) {
                                    //debugPrint(value.toString());
                                    context
                                        .read<SignUpEnableNotificationBloc>()
                                        .add(
                                          SignUpEnableNotificationEvent
                                              .toggleSwitch(index),
                                        );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: continueSection(
              onButtonPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRoutes.SIGN_UP_Create_Profile_ROUTE);
              },
            ),
          ),
        ],
      ),
    );
  }
}
