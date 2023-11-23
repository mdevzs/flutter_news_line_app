import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/features/dashboard_feature/presentation/page/bloc/dashboard_bloc.dart';
import 'package:news_line_app/features/dashboard_feature/presentation/widgets/dashboard_page_widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
            body: buildPage(state.indexPage),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: state.indexPage,
              onTap: (value) {
                context
                    .read<DashboardBloc>()
                    .add(DashboardEvent.changePage(value));
              },
              items: [
                buildBottomNavBarItem(
                  lable: 'Home',
                  activeAssetIcon: 'assets/icons/home_filled.png',
                  assetIcon: 'assets/icons/home.png',
                ),
                buildBottomNavBarItem(
                  lable: 'Discover',
                  icon: Icons.explore_outlined,
                ),
                buildBottomNavBarItem(
                  lable: 'Bookmark',
                  icon: Icons.bookmark_border,
                ),
                buildBottomNavBarItem(
                  lable: 'Profile',
                  icon: Icons.person_outline,
                ),
              ],
            ));
      },
    );
  }
}
