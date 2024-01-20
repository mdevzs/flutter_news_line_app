import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/app_constants.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_search_entity.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/discover_page/bloc/discover_bloc.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/cubit/search_text_cubit.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/network_image.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_entity.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/news_detail_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/bloc/search_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';

import '../../../../config/app_colors.dart';
import '../../../../core/widgets/widgets.dart';

class SearchSelection extends StatefulWidget {
  final Function(int) selectedIndex;
  const SearchSelection({super.key, required this.selectedIndex});

  @override
  State<SearchSelection> createState() => _SearchSelectionState();
}

class _SearchSelectionState extends State<SearchSelection> {
  final selectionItem = ['Stories', 'Accounts', 'Tags'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: selectionItem.map((item) {
        final selectedItemIndex =
            selectionItem.indexWhere((element) => element == item);
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = selectedItemIndex;
            });
            widget.selectedIndex(selectedIndex);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 1.sp, horizontal: 10.sp),
            decoration: BoxDecoration(
              color: selectedIndex == selectedItemIndex
                  ? AppColors.primaryColor
                  : Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20.sp),
              border: selectedIndex == selectedItemIndex
                  ? null
                  : Border.all(
                      color: Colors.grey.withOpacity(0.5),
                    ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.sp),
              child: customText(
                item,
                fontSize: 7,
                color: selectedIndex == selectedItemIndex
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class AccountsSectionItem extends StatefulWidget {
  final UserEntity account;
  const AccountsSectionItem({super.key, required this.account});

  @override
  State<AccountsSectionItem> createState() => _AccountsSectionItemState();
}

class _AccountsSectionItemState extends State<AccountsSectionItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.Profile_ROUTE, arguments: {
          'profileId': widget.account.id,
        });
      },
      splashFactory: NoSplash.splashFactory,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Row(
              children: [
                ClipOval(
                  child: SizedBox(
                    width: 20.sp,
                    height: 20.sp,
                    child: AppNetworkImage(
                      url: widget.account.profileImage,
                      errorAsset: AppConstatns.Profile_Picture_ASSET,
                    ),
                  ),
                ),
                gapW4,
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                        widget.account.fullName,
                        fontSize: 9,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                      ),
                      customText(
                        '@${widget.account.username}',
                        fontSize: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: FollowingButton(
              isFollowing: widget.account.isFollowing ?? false,
              fontSize: 3,
              onPressed: () {
                context.read<DiscoverBloc>().add(
                      DiscoverEvent.followAuthor(
                        widget.account.id.toString(),
                      ),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TagsSection extends StatelessWidget {
  final TagEntity tag;
  const TagsSection({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: SizedBox(
            width: 20.sp,
            height: 20.sp,
            child: Image.asset(
              'assets/icons/hashtag.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        gapW4,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(
              tag.tag!,
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
            customText(
              '${tag.postsCount} Posts',
              fontSize: 7,
            ),
          ],
        ),
        const Spacer(),
        FollowingButton(
          // toggleIndex:
          //     context.watch<ToggleSectionCubit>().state.selectedSectionIndex,
          fontSize: 3,
          onPressed: () {},
        ),
      ],
    );
  }
}

class AccountSectionBody extends StatefulWidget {
  final DiscoverSearchEntity searchEntity;
  final int index;
  const AccountSectionBody(
      {super.key, required this.searchEntity, required this.index});

  @override
  State<AccountSectionBody> createState() => _AccountSectionBodyState();
}

class _AccountSectionBodyState extends State<AccountSectionBody>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    debugPrint('account section init called');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AccountSectionBody oldWidget) {
    debugPrint('account section didupdate widget called!');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount: widget.searchEntity.accounts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 4.sp),
          child: InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.Profile_ROUTE, arguments: {
                'profileId': widget.searchEntity.accounts[index].id,
              });
            },
            child: AccountsSectionItem(
              account: widget.searchEntity.accounts[index],
            ),
          ),
        );
      },
    );
  }
}

class SearchTabItem extends StatelessWidget {
  final bool isSelected;
  final String tabTitle;
  const SearchTabItem({
    super.key,
    required this.tabTitle,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(
      //   vertical: 2.sp,
      //   horizontal: 7.sp,
      // ),
      width: double.infinity,
      height: 5.h,
      decoration: BoxDecoration(
        color:
            isSelected ? AppColors.primaryColor : Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20.sp),
        border: isSelected
            ? null
            : Border.all(
                color: Colors.grey.withOpacity(0.5),
              ),
      ),
      child: Center(
        child: customText(
          tabTitle,
          fontSize: 7,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class SearchTabStoriesBody extends StatelessWidget {
  const SearchTabStoriesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.sp),
          child: SizedBox.expand(
            child: state.searchStatus.when(
              initial: () {
                return null;
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: () {
                return ListView.builder(
                  itemCount: state.searchEntity?.news.length,
                  itemBuilder: (context, index) {
                    return RecentStoriesListItem(
                      recentSt: state.searchEntity!.news[index],
                    );
                  },
                );
              },
              error: (errorMessage) {
                return errorWidget(
                  errorMessage: errorMessage,
                  onTryAgainPressed: () {
                    context.read<SearchBloc>().add(
                          SearchEvent.search(
                            context.read<SearchTextCubit>().state.searchText,
                          ),
                        );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class SearchTabAccountBody extends StatelessWidget {
  const SearchTabAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.sp),
          child: SizedBox.expand(
            child: state.searchStatus.when(
              initial: () {
                return null;
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: () {
                return ListView.builder(
                  itemCount: state.searchEntity?.accounts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 4.sp),
                      child: AccountsSectionItem(
                        account: state.searchEntity!.accounts[index],
                      ),
                    );
                  },
                );
              },
              error: (errorMessage) {
                return errorWidget(
                  errorMessage: errorMessage,
                  onTryAgainPressed: () {
                    context.read<SearchBloc>().add(
                          SearchEvent.search(
                            context.read<SearchTextCubit>().state.searchText,
                          ),
                        );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class SearchTabTagsBody extends StatelessWidget {
  const SearchTabTagsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.sp),
          child: SizedBox.expand(
            child: state.searchStatus.when(
              initial: () {
                return null;
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: () {
                return ListView.builder(
                  itemCount: state.searchEntity?.tags.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 4.sp),
                      child: TagsSection(
                        tag: state.searchEntity!.tags[index],
                      ),
                    );
                  },
                );
              },
              error: (errorMessage) {
                return errorWidget(
                  errorMessage: errorMessage,
                  onTryAgainPressed: () {
                    context.read<SearchBloc>().add(
                          SearchEvent.search(
                            context.read<SearchTextCubit>().state.searchText,
                          ),
                        );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
