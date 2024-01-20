import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/profile_page/bloc/profile_bloc.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/profile_page_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final args =
            ModalRoute.of(context)?.settings.arguments as Map<String, int>;
        context
            .read<ProfileBloc>()
            .add(ProfileEvent.getProfile(args['profileId']!));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/menu.png',
              width: 11.sp,
            ),
          ),
        ],
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return SizedBox(
            child: state.profileStatus.when(
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (profileEntity) {
                return ProfilePageBody(
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
          );
        },
      ),
    );
  }
}
