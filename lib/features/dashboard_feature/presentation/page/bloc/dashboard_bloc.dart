import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState()) {
    on<DashboardEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        changePage: (index) => _changePage(emit, index),
      );
    });
  }

  void _changePage(Emitter<DashboardState> emit, index) {
    emit(state.copyWith(indexPage: index));
  }
}
