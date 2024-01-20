import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/discover_page_widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/trending_news_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import 'bloc/discover_bloc.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  void initState() {
    context.read<DiscoverBloc>().add(
          const DiscoverEvent.discover(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: trReNewsPageAppBar(context, 'Discover'),
      body: BlocBuilder<DiscoverBloc, DiscoverState>(builder: (context, state) {
        return SizedBox(
          height: 100.h,
          width: 100.w,
          child: state.discoverStatus.when(
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (discoverEntity) {
              return DiscoverPageBody(
                discoverEntity: discoverEntity,
              );
            },
            error: (errorMessage) {
              return Center(
                child: errorWidget(
                  errorMessage: errorMessage,
                  onTryAgainPressed: () {
                    context.read<DiscoverBloc>().add(
                          const DiscoverEvent.discover(),
                        );
                  },
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
