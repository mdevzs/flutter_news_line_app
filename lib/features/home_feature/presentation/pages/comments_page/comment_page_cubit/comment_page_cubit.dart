import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_page_state.dart';
part 'comment_page_cubit.freezed.dart';

class CommentPageCubit extends Cubit<CommentPageState> {
  CommentPageCubit() : super(const CommentPageState());

  void toggleTab(int index) {
    emit(state.copyWith(
      seletectedTabIndex: index,
    ));
  }

  void getNewsId(String newsId) {
    emit(state.copyWith(
      newsId: newsId,
    ));
  }
}
