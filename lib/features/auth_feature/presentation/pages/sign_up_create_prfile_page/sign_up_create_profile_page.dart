import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:news_line_app/core/params/sign_up_params.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:news_line_app/core/widgets/show_snackbar.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_follow_official_author/bloc/sign_up_follow_official_author_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_page/bloc/sign_up_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/bloc/sign_up_select_country_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_intrested_tag_page/bloc/sign_up_select_intrested_tag_bloc.dart';
import 'package:sizer_pro/sizer.dart';

import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_create_prfile_page/bloc/sign_up_create_prfile_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/widgets/auth_features_widgets.dart';

import '../../../../../core/utils/injection.dart';

class SignUpCreateProfilePage extends StatelessWidget {
  const SignUpCreateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final storageService = sl.get<StorageService>();
    final formKey = GlobalKey<FormState>();
    DateTime initialDate = DateTime.now();
    final fullNameTextController = TextEditingController();
    final usernameTextController = TextEditingController();
    final dateOfBirthTextController = TextEditingController();
    String gender = '';
    final phoneTextController = TextEditingController();
    final bioTextController = TextEditingController();
    final email = context.read<SignUpBloc>().emailController.text;
    final password = context.read<SignUpBloc>().passwordController.text;
    final selecteCountryName =
        context.read<SignUpSelectCountryBloc>().state.countrySelectedName;
    final intrestedTags = context
        .read<SignUpSelectIntrestedTagBloc>()
        .state
        .selectedIntrestedTags;
    final followingAuthors = context
        .read<SignUpFollowOfficialAuthorBloc>()
        .state
        .selectedOfficialAuthorToFollow;
    debugPrint(
        'email: $email\n password: $password\n countryName: $selecteCountryName\n selectedTags: $intrestedTags\n following:$followingAuthors');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: progressAppbar(percentage: 1),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textWithIcon(
                        text: 'Create public profile',
                        icon: 'assets/icons/earth.png',
                        iconSize: 12,
                      ),
                      customText(
                        'This profile will appear public. so people can find you and the stories you share.',
                        fontSize: 8,
                      ),
                      gapH8,
                      Center(
                        child: BlocBuilder<SignUpCreatePrfileBloc,
                            SignUpCreatePrfileState>(
                          builder: (context, state) {
                            return editProfileImage(
                                context: context, imageFile: state.imageFile);
                          },
                        ),
                      ),
                      gapH12,
                      customText(
                        'Full Name',
                        fontSize: 8,
                      ),
                      CustomTextField(
                        controller: fullNameTextController,
                        icon: null,
                        hintText: '',
                        onChangeValue: (value) {},
                        validator: FormBuilderValidators.required(),
                      ),
                      gapH4,
                      customText(
                        'Username',
                        fontSize: 8,
                      ),
                      CustomTextField(
                        controller: usernameTextController,
                        icon: null,
                        hintText: '',
                        onChangeValue: (value) {},
                        validator: FormBuilderValidators.required(),
                      ),
                      gapH4,
                      customText(
                        'Date of Birth',
                        fontSize: 8,
                      ),
                      CustomTextField(
                        controller: dateOfBirthTextController,
                        readOnly: true,
                        suffixHighlightColor: Colors.transparent,
                        onTap: () async {
                          await showCalendarDatePicker2Dialog(
                            context: context,
                            value: [initialDate],
                            config:
                                CalendarDatePicker2WithActionButtonsConfig(),
                            dialogSize: Size(80.w, 50.h),
                          ).then((dates) {
                            if (dates != null && dates.isNotEmpty) {
                              final date = DateFormat('dd/MM/yyyy').format(
                                dates[0]!,
                              );
                              dateOfBirthTextController.text = date;
                              initialDate = DateFormat('dd/MM/yyyy')
                                  .parse(dateOfBirthTextController.text);
                            }
                          });
                        },
                        icon: null,
                        hintText: '',
                        sufficxIcon: const Icon(Icons.calendar_month_outlined),
                        onChangeValue: (value) {},
                        validator: FormBuilderValidators.required(),
                      ),
                      gapH4,
                      customText(
                        'Gender',
                        fontSize: 8,
                      ),
                      genderDropDownFormField(
                        onChangeValue: (selectedGender) {
                          gender = selectedGender;
                        },
                      ),
                      gapH4,
                      customText(
                        'Phone Number',
                        fontSize: 8,
                      ),
                      phoneFormField(controller: phoneTextController),
                      gapH4,
                      customText(
                        'Bio',
                        fontSize: 8,
                      ),
                      CustomTextField(
                        controller: bioTextController,
                        icon: null,
                        hintText: '',
                        maxLine: 3,
                        onChangeValue: (value) {},
                        validator: (value) => null,
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
            bottom: 0,
            child:
                BlocConsumer<SignUpCreatePrfileBloc, SignUpCreatePrfileState>(
              listenWhen: (previous, current) {
                if (previous.imageFile == current.imageFile &&
                    previous.signUpIsLoading) {
                  return true;
                } else {
                  return false;
                }
              },
              listener: (context, state) {
                state.createProfileState?.when(
                  success: (user) {
                    storageService.storeUserInformation(
                      user.token,
                      user.id,
                      user.profileImage,
                      user.fullName,
                    );
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        AppRoutes.Home_ROUTE, (route) => false);
                  },
                  error: (message) {
                    debugPrint('state changed!');
                    showSnackBar(message);
                  },
                );
              },
              builder: (context, state) {
                return continueSection(
                  isLoading: state.signUpIsLoading,
                  text: 'Finish',
                  onButtonPressed: () {
                    if (formKey.currentState!.validate()) {
                      final signUpParams = SignUpParams(
                        fullName: fullNameTextController.text,
                        email: email,
                        password: password,
                        intrestedTags:
                            intrestedTags.map((e) => e.toString()).toList(),
                        following:
                            followingAuthors.map((e) => e.toString()).toList(),
                        country: selecteCountryName,
                        username: usernameTextController.text,
                        dateOfBirth: dateOfBirthTextController.text,
                        gender: gender,
                        phone: phoneTextController.text,
                        bio: bioTextController.text.isEmpty
                            ? null
                            : bioTextController.text,
                        profileImage: context
                            .read<SignUpCreatePrfileBloc>()
                            .state
                            .imageFile,
                      );
                      debugPrint(gender);
                      context.read<SignUpCreatePrfileBloc>().add(
                          SignUpCreatePrfileEvent.createProfile(signUpParams));
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
