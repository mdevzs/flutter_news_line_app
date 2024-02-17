import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/params/edit_profile_params.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/profile_feature/presentation/pages/edit_profile_page/bloc/edit_profile_bloc.dart';
import 'package:news_line_app/features/profile_feature/presentation/widgets/profile_feature_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../config/app_colors.dart';
import '../profile_page/bloc/profile_bloc.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late UserEntity user;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    user = ModalRoute.of(context)?.settings.arguments as UserEntity;
    debugPrint('user $user');
  }

  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    final fullNameTxtEditController =
        TextEditingController(text: user.fullName);
    final usernameTxtEditController =
        TextEditingController(text: user.username);
    final bioTxtEditController = TextEditingController(text: user.bio);
    final websiteTxtEditController = TextEditingController();
    File? selectedImageFile;
    return Scaffold(
      appBar: AppBar(
        title: customText(
          'Edit Profile',
          fontSize: 9,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gapH12,
                  ChangeProfileImageWidget(
                    userImage: user.profileImage,
                    selectedImage: (imageFile) {
                      selectedImageFile = imageFile;
                    },
                  ),
                  gapH8,
                  customText(
                    'Full Name',
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                  gapH4,
                  CustomTextField(
                    controller: fullNameTxtEditController,
                    hintText: '',
                    onChangeValue: (value) {},
                  ),
                  gapH8,
                  customText(
                    'Username',
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                  gapH4,
                  CustomTextField(
                    controller: usernameTxtEditController,
                    hintText: '',
                    onChangeValue: (value) {},
                  ),
                  gapH8,
                  customText(
                    'Bio',
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                  gapH4,
                  CustomTextField(
                    controller: bioTxtEditController,
                    hintText: '',
                    maxLine: 4,
                    onChangeValue: (value) {},
                  ),
                  gapH8,
                  customText(
                    'Website',
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                  gapH4,
                  CustomTextField(
                    controller: websiteTxtEditController,
                    hintText: '',
                    onChangeValue: (value) {},
                  ),
                  SizedBox(
                    height: 12.h,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              height: 12.h,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 10.sp,
                  top: 8.sp,
                  right: 4.sp,
                  left: 4.sp,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<EditProfileBloc>().add(
                          EditProfileEvent.editProfile(
                            10,
                            EditProfileParams(
                              fullName: fullNameTxtEditController.text,
                              username: usernameTxtEditController.text,
                              bio: bioTxtEditController.text,
                              website: websiteTxtEditController.text,
                              imageFile: selectedImageFile,
                            ),
                          ),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor),
                  child: BlocConsumer<EditProfileBloc, EditProfileState>(
                    listener: (context, state) {
                      state.editProfileStatus.when(
                        initial: () {},
                        loading: () {},
                        success: () {
                          debugPrint('edited successfully');
                          //* update the profile screen
                          context.read<ProfileBloc>().add(
                                ProfileEvent.getProfile(
                                  user.id,
                                ),
                              );
                          Navigator.pop(context);
                        },
                        error: (errorMessage) {
                          debugPrint('edit profile has error:$errorMessage');
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.editProfileStatus.maybeWhen(
                        loading: () {
                          return const CircularProgressIndicator(
                            color: Colors.white,
                          );
                        },
                        orElse: () {
                          return customText(
                            'Save',
                            color: Colors.white,
                            fontSize: 9,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
