import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/pages/bloc/bookmark_bloc.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/pages/cubit/toggle_collection_item_cubit.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/widgets/bookmark_widgets.dart';

import '../../../home_feature/presentation/widgets/trending_news_widgets.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  void initState() {
    context.read<ToggleCollectionItemCubit>().toggle(1);
    context
        .read<BookmarkBloc>()
        .add(const BookmarkEvent.getAllNewsOfCollection(1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('bookmark page rebuild');
    return Scaffold(
      appBar: trReNewsPageAppBar(context, 'Bookmark'),
      body: const Column(
        children: [
          SelectCollectionWidget(),
          BookmarkBody(),
        ],
      ),
    );
  }
}
