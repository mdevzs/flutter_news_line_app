import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_news_event.dart';
part 'trending_news_state.dart';
part 'trending_news_bloc.freezed.dart';

class TrendingNewsBloc extends Bloc<TrendingNewsEvent, TrendingNewsState> {
  TrendingNewsBloc() : super(_Initial()) {
    on<TrendingNewsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
