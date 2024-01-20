import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_text_state.dart';
part 'search_text_cubit.freezed.dart';

class SearchTextCubit extends Cubit<SearchTextState> {
  SearchTextCubit() : super(const SearchTextState());

  searchText(String text) {
    emit(
      state.copyWith(
        searchText: text,
      ),
    );
  }
}
