import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../core/utils/gaps.dart';
import '../../../home_feature/presentation/widgets/home_widgets.dart';
import '../../domain/entities/bookmarks.dart';
import '../pages/bloc/bookmark_bloc.dart';
import '../pages/cubit/toggle_collection_item_cubit.dart';

class SelectCollectionWidget extends StatefulWidget {
  const SelectCollectionWidget({super.key});

  @override
  State<SelectCollectionWidget> createState() => _SelectCollectionWidgetState();
}

class _SelectCollectionWidgetState extends State<SelectCollectionWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    context.read<BookmarkBloc>().add(const BookmarkEvent.getAllCollection());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedCollectionIndex =
        context.watch<ToggleCollectionItemCubit>().state.index;
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: DefaultTabController(
            length: state.collections.length,
            child: TabBar(
              labelPadding: const EdgeInsets.all(3),
              onTap: (index) {
                if (index == 0) {
                  addNewCollectionBottomNav(context);
                } else {
                  //* when tap on a collection that is already selected
                  //* this won't be called.
                  if (index != selectedCollectionIndex) {
                    context.read<ToggleCollectionItemCubit>().toggle(index);
                    context
                        .read<BookmarkBloc>()
                        .add(BookmarkEvent.getAllNewsOfCollection(index));
                  }
                }
              },
              splashFactory: NoSplash.splashFactory,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: state.collections
                  .map(
                    (e) => CollectioinItemWidget(
                      collection: e,
                      isSelected: selectedCollectionIndex == e.id,
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

class CollectioinItemWidget extends StatefulWidget {
  final Bookmarks collection;
  final bool isSelected;
  const CollectioinItemWidget({
    super.key,
    required this.collection,
    required this.isSelected,
  });

  @override
  State<CollectioinItemWidget> createState() => _CollectioinItemWidgetState();
}

class _CollectioinItemWidgetState extends State<CollectioinItemWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.collection.id == 0
        ? ClipOval(
            child: Container(
              color: Colors.cyan,
              width: 17.sp,
              height: 17.sp,
              child: Center(
                  child: Text(
                widget.collection.name,
                style: TextStyle(
                  fontSize: 10.f,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
          )
        : Container(
            height: 5.h,
            decoration: BoxDecoration(
              color: widget.isSelected ? Colors.cyan : Colors.white,
              borderRadius: BorderRadius.circular(30.sp),
              border: !widget.isSelected
                  ? Border.all(
                      width: 0.5,
                      color: Colors.grey,
                    )
                  : null,
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 3.sp, horizontal: 4.sp),
                child: Text(
                  widget.collection.name,
                  style: TextStyle(
                    fontSize: 8.f,
                    fontWeight: FontWeight.bold,
                    color: widget.isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
  }
}

class BookmarkBody extends StatefulWidget {
  const BookmarkBody({super.key});

  @override
  State<BookmarkBody> createState() => _BookmarkBodyState();
}

class _BookmarkBodyState extends State<BookmarkBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
        return Expanded(
          child: SizedBox(
            child: state.getAllNewsOfCollectionStatus.when(
              initial: () {
                return null;
              },
              success: (news) {
                debugPrint('bookmark page body rebuild!');
                if (news.isNotEmpty) {
                  return ListView.builder(
                    padding: EdgeInsets.all(6.sp),
                    itemCount: news.length,
                    itemBuilder: (context, index) {
                      return RecentStoriesListItem(
                        recentSt: news[index],
                        isBookmarked: true,
                      );
                    },
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/clipboard1.png',
                      ),
                      gapH4,
                      customText(
                        'Empty',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      gapH4,
                      customText(
                        //* when there is no collection yet == length is 1
                        //* else we have collection but there is no news in it.
                        state.collections.length == 1
                            ? 'You have not saved any stories'
                            : 'You have not saved any stories to this collections.',
                        fontSize: 8,
                        textAlign: TextAlign.center,
                      )
                    ],
                  );
                }
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
        );
      },
    );
  }
}
