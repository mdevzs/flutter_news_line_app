import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/features/discover_feature/domain/usecases/discover_usecase.dart';
import 'package:news_line_app/features/discover_feature/domain/usecases/follow_author_usercase.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/bloc/discover_status.dart';

part 'discover_event.dart';
part 'discover_state.dart';
part 'discover_bloc.freezed.dart';

class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  final DiscoverUsecase discoverUsecase;
  final FollowAuthorUsecase followAuthorUsecase;
  DiscoverBloc(
    this.discoverUsecase,
    this.followAuthorUsecase,
  ) : super(const DiscoverState()) {
    on<DiscoverEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        discover: () => _discover(emit),
        followAuthor: (followingId) => _followAuthor(
          emit,
          followingId,
        ),
      );
    });
  }

  _discover(Emitter<DiscoverState> emit) async {
    emit(state.copyWith(discoverStatus: const DiscoverStatus.loading()));
    final failureOrEntity = await discoverUsecase(NoParams());
    failureOrEntity.fold(
      (l) =>
          emit(state.copyWith(discoverStatus: DiscoverStatus.error(l.message))),
      (r) => emit(state.copyWith(discoverStatus: DiscoverStatus.success(r))),
    );
  }

  _followAuthor(Emitter<DiscoverState> emit, String followingId) async {
    debugPrint('follow bloc is called');
    final result = await followAuthorUsecase(followingId);
    result.fold((l) => debugPrint(l.message), (r) => null);
  }
}
