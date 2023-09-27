import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';
import 'package:news_line_app/app_constants.dart';
import 'package:news_line_app/application/core/widgets/widgets.dart';
import 'package:news_line_app/application/pages/on_boarding_page/bloc/on_boarding_bloc.dart';
import 'package:sizer_pro/sizer.dart';

ConstraintId imageOnBoardingCId = ConstraintId('imageOnBoardingCId');
ConstraintId titleOnBoardingCId = ConstraintId('titleOnBoardingCId');
ConstraintId descriptionOnBoardingCId =
    ConstraintId('descriptionOnBoardingCId');
ConstraintId guidLineOnBoardingCId = ConstraintId('guidLineOnBoardingCId');
ConstraintId dotIndicatorOnBoardingCId =
    ConstraintId('dotIndicatorOnBoardingCId');

Widget pageViewItem(String onBoardingImage, String title, String desc) {
  return BlocBuilder<OnBoardingBloc, OnBoardingState>(
    builder: (context, state) {
      return ConstraintLayout(
        children: [
          Image.asset(
            onBoardingImage,
            fit: BoxFit.fitHeight,
          ).applyConstraint(
            id: imageOnBoardingCId,
            width: matchParent,
            height: 40.h,
            bottom: guidLineOnBoardingCId.top,
          ),
          Guideline(
            id: guidLineOnBoardingCId,
            guidelinePercent: 0.5,
            horizontal: true,
          ),
          customText(
            title,
            fontSize: SizerUtil.height > 600 ? 12 : 10,
            fontWeight: FontWeight.bold,
          ).applyConstraint(
            id: titleOnBoardingCId,
            width: matchParent,
            top: imageOnBoardingCId.bottom,
            margin: EdgeInsets.symmetric(
              horizontal: 8.sp,
              vertical: SizerUtil.height > 600 ? 8.sp : 4.sp,
            ),
          ),
          customText(
            desc,
            fontSize: SizerUtil.height > 600 ? 10 : 8,
          ).applyConstraint(
            id: descriptionOnBoardingCId,
            width: matchParent,
            top: titleOnBoardingCId.bottom,
            margin: EdgeInsets.symmetric(
              horizontal: 8.sp,
              vertical: SizerUtil.height < 600 ? 4.sp : 8.sp,
            ),
          ),
          DotsIndicator(
            dotsCount: AppConstatns.onBoardingList.length,
            position: state.page,
            decorator: DotsDecorator(
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(3.sp),
                ),
              ),
              activeSize: Size(13.sp, 3.sp),
            ),
          ).applyConstraint(
            id: dotIndicatorOnBoardingCId,
            top: descriptionOnBoardingCId.bottom,
            left: parent.left,
            margin: EdgeInsets.only(left: 8.sp, top: 8.sp),
          )
        ],
      );
    },
  );
}
