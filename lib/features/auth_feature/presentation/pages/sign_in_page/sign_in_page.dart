import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../core/services/storage_service.dart';
import '../../../../../core/utils/injection.dart';
import '../../../../../core/widgets/show_snackbar.dart';
import 'bloc/sign_in_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final storageService = sl.get<StorageService>();
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return WillPopScope(
      onWillPop: () async {
        context.read<SignInBloc>().add(const SignInEvent.dispose());
        return true;
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(8.sp),
          child: BlocConsumer<SignInBloc, SignInState>(
            listenWhen: (previous, current) {
              if (previous.obscurePassword == current.obscurePassword &&
                  previous.rememberMe == current.rememberMe &&
                  previous.isSignInSubmittedLoading) {
                return true;
              }
              return false;
            },
            listener: (context, state) {
              state.signInSubmittedState?.when(
                loaded: (user) {
                  storageService.storeUserInformation(user.token, user.id);
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      AppRoutes.Dashboard_ROUTE, (route) => false);
                },
                error: (message) {
                  showSnackBar(message);
                  debugPrint(message);
                },
              );
              //debugPrint('listener called!');
            },
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
                              'Welcome back',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            Image.asset(
                              'assets/icons/waving_hand.png',
                              width: 10.sp,
                            ),
                          ],
                        ),
                        gapH8,
                        customText(
                          'Please enter your email and password to sign in.',
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
                                controller: emailController,
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
                                controller: passwordController,
                                onTogglePasswordIconPressed: () {
                                  context.read<SignInBloc>().add(
                                        const SignInEvent
                                            .obsecurePasswordToggle(),
                                      );
                                },
                                onChangeValue: (value) {},
                                validator: FormBuilderValidators.required(),
                              ),
                            ],
                          ),
                        ),
                        gapH4,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 40.w,
                              child: CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                visualDensity: VisualDensity.compact,
                                title: customText(
                                  'Remember me',
                                  fontSize: 6,
                                  fontWeight: FontWeight.bold,
                                ),
                                value: state.rememberMe,
                                onChanged: (value) {
                                  context.read<SignInBloc>().add(
                                      const SignInEvent.rememberMeToggle());
                                },
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: customText(
                                'Forgot password?',
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
                              'Don\'t have an account?',
                              fontSize: 7,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .popAndPushNamed(AppRoutes.SIGN_UP_ROUTE);
                              },
                              child: customText(
                                'Sign Up',
                                fontSize: 7,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                        appButton(
                          'Sign in',
                          isLoading: state.isSignInSubmittedLoading,
                          fontSize: 8,
                          width: 100,
                          height: 5,
                          onButtonPress: () {
                            if (formKey.currentState!.validate()) {
                              debugPrint('button onPressed');
                              context.read<SignInBloc>().add(
                                    SignInEvent.signInSubmitted(
                                      {
                                        "email": emailController.text,
                                        "password": passwordController.text,
                                      },
                                    ),
                                  );
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
      ),
    );
  }
}
