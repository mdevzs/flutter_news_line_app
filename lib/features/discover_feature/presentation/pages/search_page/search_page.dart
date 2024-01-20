import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/bloc/search_bloc.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/cubit/search_text_cubit.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/cubit/toggle_section_cubit.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/search_page_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../core/utils/debouncer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  final searchTextController = TextEditingController();
  final debouncer = Debouncer(milliseconds: 500);
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.watch<ToggleSectionCubit>().state.selectedSectionIndex;
    return PopScope(
      onPopInvoked: (didPop) {
        context.read<ToggleSectionCubit>().dispose();
      },
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leadingWidth: 40,
              toolbarHeight: 10.h,
              title: CustomTextField(
                controller: searchTextController,
                hintText: 'search',
                icon: Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.7),
                ),
                showClearIcon: true,
                onChangeValue: (value) {
                  debouncer.run(
                    () {
                      context.read<SearchBloc>().add(
                            SearchEvent.search(value),
                          );
                    },
                  );
                  context.read<SearchTextCubit>().searchText(value);
                },
                onClearedButtonPressed: () {
                  setState(() {
                    searchTextController.clear();
                  });
                },
              ),
            ),
            body: searchTextController.text.isEmpty
                ? const SizedBox()
                : Column(
                    children: [
                      TabBar(
                        controller: tabController,
                        padding: EdgeInsets.zero,
                        splashFactory: NoSplash.splashFactory,
                        indicatorColor: Colors.transparent,
                        dividerColor: Colors.transparent,
                        labelPadding: EdgeInsets.symmetric(horizontal: 2.sp),
                        onTap: (index) {
                          context.read<ToggleSectionCubit>().toggle(index);
                        },
                        tabs: [
                          SearchTabItem(
                            tabTitle: 'Stories',
                            isSelected: selectedIndex == 0,
                          ),
                          SearchTabItem(
                            tabTitle: 'Accounts',
                            isSelected: selectedIndex == 1,
                          ),
                          SearchTabItem(
                            tabTitle: 'Tags',
                            isSelected: selectedIndex == 2,
                          ),
                        ],
                      ),
                      gapH4,
                      Expanded(
                        child: BlocBuilder<SearchBloc, SearchState>(
                          builder: (context, state) {
                            return TabBarView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: tabController,
                              children: const [
                                SearchTabStoriesBody(),
                                SearchTabAccountBody(),
                                SearchTabTagsBody(),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
          );
        },
      ),
    );
  }
}
