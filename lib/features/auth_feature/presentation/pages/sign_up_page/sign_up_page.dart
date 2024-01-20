import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../config/app_colors.dart';
import '../../../../../core/utils/gaps.dart';
import '../../../../../core/widgets/widgets.dart';
import 'bloc/sign_up_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8.sp),
        child: BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            debugPrint('ui rebuild');
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          customText(
                            'Create Account',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          Image.asset(
                            'assets/icons/woman_laptop.png',
                            width: 12.sp,
                          ),
                        ],
                      ),
                      gapH8,
                      customText(
                        'Join our community and personalize your news experience.',
                        fontSize: 7.5,
                      ),
                      gapH8,
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                              'Email',
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                            gapH4,
                            CustomTextField(
                              controller:
                                  context.read<SignUpBloc>().emailController,
                              icon: const Icon(Icons.email),
                              hintText: 'Email',
                              onChangeValue: (value) {},
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                FormBuilderValidators.email(),
                              ]),
                            ),
                            gapH8,
                            customText(
                              'Password',
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                            gapH4,
                            appPasswordTextFormField(
                              context,
                              state.obscurePassword,
                              controller:
                                  context.read<SignUpBloc>().passwordController,
                              onChangeValue: (value) {},
                              onTogglePasswordIconPressed: () {
                                context.read<SignUpBloc>().add(
                                    const SignUpEvent.obscurePasswordToggled());
                              },
                              validator: FormBuilderValidators.minLength(6),
                            ),
                          ],
                        ),
                      ),
                      gapH4,
                      Row(
                        children: [
                          SizedBox(
                            width: 47.w,
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              visualDensity: VisualDensity.compact,
                              title: customText(
                                'I agree to Newsline',
                                fontSize: 6,
                                fontWeight: FontWeight.bold,
                              ),
                              value: state.agreeToTerms,
                              subtitle: !state.agreeToTerms && state.isSubmited
                                  ? customText(
                                      'Required Field',
                                      fontSize: 6,
                                      color: const Color(0xFFe53935),
                                    )
                                  : null,
                              onChanged: (value) {
                                context.read<SignUpBloc>().add(
                                    const SignUpEvent.agreeToTermsToggled());
                              },
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: customText(
                              'Terms, & Policy.',
                              fontSize: 7,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      gapH4,
                      Divider(
                        height: 0.5.h,
                        color: AppColors.primaryColor.withOpacity(0.1),
                      ),
                      gapH8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customText(
                            'Already have an account?',
                            fontSize: 7,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .popAndPushNamed(AppRoutes.SIGN_IN_ROUTE);
                            },
                            child: customText(
                              'Sign In',
                              fontSize: 7,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      appButton(
                        'Sign Up',
                        fontSize: 8,
                        width: 100,
                        height: 5,
                        onButtonPress: () {
                          context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.submit());
                          if (formKey.currentState!.validate() &&
                              state.agreeToTerms) {
                            Navigator.of(context).pushNamed(
                                AppRoutes.SIGN_UP_Select_Country_ROUTE);
                          }
                        },
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
