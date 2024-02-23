import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:news_line_app/core/utils/injection.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/profile_page_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../config/app_colors.dart';
import '../../../../../core/routes/names.dart';
import 'bloc/profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final currentUserId = sl.get<StorageService>().userId()!;
  late bool isCurrentUserProfile;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('didChange called!');
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final args = arguments != null ? arguments as Map<String, int> : null;
    isCurrentUserProfile = args?['profileId']?.toInt() == null;

    //* when the profile page opened from the navigation bar we load the profile
    //* page with the currentUserId.
    //* if this page is opened from other pages the passed profileId will use
    context
        .read<ProfileBloc>()
        .add(ProfileEvent.getProfile(args?['profileId'] ?? currentUserId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined),
              ),
              isCurrentUserProfile
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings_outlined),
                    )
                  : IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/menu.png',
                        width: 11.sp,
                      ),
                    ),
            ],
          ),
          body: SizedBox(
            child: state.profileStatus.when(
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (profileEntity) {
                debugPrint('success called!');
                return ProfilePageBody(
                  isCurrentUserProifle: isCurrentUserProfile,
                  profile: profileEntity,
                );
              },
              error: (errorMessage) {
                return Center(
                  child: errorWidget(
                    errorMessage: errorMessage,
                    onTryAgainPressed: () {},
                  ),
                );
              },
            ),
          ),
          floatingActionButton: isCurrentUserProfile
              ? FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.Write_Story_ROUTE);
                  },
                  backgroundColor: AppColors.primaryColor,
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.mode_edit_outline_outlined,
                    color: Colors.white,
                  ),
                )
              : null,
        );
      },
    );
  }
}
