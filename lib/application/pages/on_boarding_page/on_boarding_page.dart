import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';
import 'package:news_line_app/app_colors.dart';
import 'package:news_line_app/app_constants.dart';
import 'package:news_line_app/application/core/routes/names.dart';
import 'package:news_line_app/application/core/services/storage_service.dart';
import 'package:news_line_app/application/core/widgets/widgets.dart';
import 'package:news_line_app/application/pages/on_boarding_page/bloc/on_boarding_bloc.dart';
import 'package:news_line_app/application/pages/on_boarding_page/widgets/on_boarding_widgets.dart';
import 'package:sizer_pro/sizer.dart';
import '../../../injection.dart';

ConstraintId pageViewOnBoardingCId = ConstraintId('pageViewOnBoardingCId');
ConstraintId bottomSectionOnBoardingCId =
    ConstraintId('bottomSectionOnBoardingCId');

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController();
    final storageService = sl.get<StorageService>();
    return Scaffold(
      body: BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
          return ConstraintLayout(
            children: [
              PageView(
                  controller: pageViewController,
                  onPageChanged: (value) {
                    context.read<OnBoardingBloc>().add(
                          OnBoardingEvent(page: value),
                        );
                  },
                  children: [
                    for (var element in AppConstatns.onBoardingList)
                      pageViewItem(
                        element['image']!,
                        element['title']!,
                        element['description']!,
                      )
                  ]).applyConstraint(
                  id: pageViewOnBoardingCId,
                  width: matchParent,
                  top: parent.top,
                  bottom: bottomSectionOnBoardingCId.top),
              state.page < 2
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        appButton(
                          'Skip',
                          width: 45,
                          height: 2,
                          padding: EdgeInsets.all(4.sp),
                          fontSize: 8,
                          bgColor: AppColors.bgButtonColor,
                          textColor: AppColors.primaryColor,
                          onButtonPress: () {},
                        ),
                        appButton(
                          'Continue',
                          width: 45,
                          height: 2,
                          padding: EdgeInsets.all(4.sp),
                          fontSize: 8,
                          bgColor: AppColors.primaryColor,
                          textColor: Colors.white,
                          onButtonPress: () {
                            pageViewController.animateToPage(
                              state.page + 1,
                              duration: const Duration(microseconds: 200),
                              curve: Curves.easeInOut,
                            );
                          },
                        ),
                      ],
                    ).applyConstraint(
                      id: bottomSectionOnBoardingCId,
                      margin: EdgeInsets.only(bottom: 4.h),
                      bottom: parent.bottom,
                      width: matchParent,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        appButton(
                          'Get Started',
                          width: 94,
                          height: 2,
                          padding: EdgeInsets.all(4.sp),
                          fontSize: 8,
                          bgColor: AppColors.primaryColor,
                          textColor: Colors.white,
                          onButtonPress: () {
                            storageService.setIsFirstTimeUseTheApp(false);
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil(AppRoutes.AUTH_ROUTE,(route) => false,);
                          },
                        ),
                      ],
                    ).applyConstraint(
                      id: bottomSectionOnBoardingCId,
                      margin: EdgeInsets.only(bottom: 4.h),
                      bottom: parent.bottom,
                      width: matchParent,
                    )
            ],
          );
        },
      ),
    );
  }
}
