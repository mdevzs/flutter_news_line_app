import 'package:flutter/material.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

ConstraintId logoAuthCId = ConstraintId('logoAuthCId');
ConstraintId middleSectionAuthCId = ConstraintId('middleSectionAuthCId');
ConstraintId buttonGetStartedAuthCId = ConstraintId('buttonGetStartedAuthCId');
ConstraintId signUpTextAuthCId = ConstraintId('signUpTextAuthCId');
ConstraintId signInButtonAuthCId = ConstraintId('signInButtonAuthCId');
ConstraintId signUpSectionAuthCId = ConstraintId('signUpSectionAuthCId');

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstraintLayout(
        children: [
          Image.asset(
            'assets/images/news_line_logo.png',
            width: 35.sp,
          ).applyConstraint(
            id: logoAuthCId,
            topCenterTo: parent,
            margin: EdgeInsets.only(top: SizerUtil.height > 630 ? 8.h : 4.h),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: SizerUtil.height > 630 ? 4.h : 2.h),
                child: customText(
                  'Newsline',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 2.h,
                  bottom: SizerUtil.height > 630 ? 4.h : 2.h,
                ),
                child: customText(
                  'Welcome! Let\'s dive in into your account!',
                  fontSize: 8,
                  textAlign: TextAlign.center,
                ),
              ),
              appIconButton(
                icon: 'assets/icons/google.png',
                text: 'Continue with Google',
              ),
              SizedBox(
                height: 2.h,
              ),
              appIconButton(
                icon: 'assets/icons/apple.png',
                text: 'Continue with Apple',
              ),
              SizedBox(
                height: 2.h,
              ),
              appIconButton(
                icon: 'assets/icons/facebook.png',
                text: 'Continue with Facebook',
              ),
              SizedBox(
                height: 2.h,
              ),
              appIconButton(
                icon: 'assets/icons/twitter.png',
                text: 'Continue with Twitter',
              ),
            ],
          ).applyConstraint(
            id: middleSectionAuthCId,
            width: matchParent,
            top: logoAuthCId.bottom,
            height: matchConstraint,
            bottom: signInButtonAuthCId.top,
            margin: EdgeInsets.symmetric(horizontal: 4.w),
          ),
          appButton(
            'Sign in with password',
            width: 92,
            height: 3,
            fontSize: 8,
            padding: EdgeInsets.all(5.sp),
            onButtonPress: () {
              Navigator.of(context).pushNamed(AppRoutes.SIGN_IN_ROUTE);
            },
          ).applyConstraint(
            id: signInButtonAuthCId,
            centerHorizontalTo: parent,
            bottom: signUpSectionAuthCId.top,
            margin: EdgeInsets.only(bottom: SizerUtil.height > 630 ? 5.h : 2.h),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customText('Don\'t have an account?', fontSize: 8),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.SIGN_UP_ROUTE);
                },
                child: customText(
                  'Sign Up',
                  fontSize: 8,
                  color: AppColors.primaryColor,
                ),
              )
            ],
          ).applyConstraint(
            id: signUpSectionAuthCId,
            width: matchParent,
            bottom: parent.bottom,
            margin: EdgeInsets.only(bottom: SizerUtil.height > 640 ? 5.h : 2.h),
          )
        ],
      ),
    );
  }
}
