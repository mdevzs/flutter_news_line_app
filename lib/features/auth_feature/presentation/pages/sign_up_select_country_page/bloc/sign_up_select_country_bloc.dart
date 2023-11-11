import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_data_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_select_country_usecase.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/bloc/sign_up_get_all_countries_state.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/bloc/sign_up_loading_more.dart';

part 'sign_up_select_country_event.dart';
part 'sign_up_select_country_state.dart';
part 'sign_up_select_country_bloc.freezed.dart';

class SignUpSelectCountryBloc
    extends Bloc<SignUpSelectCountryEvent, SignUpSelectCountryState> {
  final SignUpSelectCountryUsecase signUpUsecase;
  ScrollController scrollController = ScrollController();
  int page = 1;
  List<CountriesDataEntity> oldCountries = [];
  SignUpSelectCountryBloc(this.signUpUsecase)
      : super(
          const SignUpSelectCountryState(
            countrySelectedId: -1,
            countries: [],
            getAllCountriesState: SignUpGetAllCountriesState.initial(),
          ),
        ) {
    on<SignUpSelectCountryEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getCountries: (q) => _getAllCountries(emit, q),
        loadMore: (isTryAgin, q) => _loadMore(emit, isTryAgin, q),
        selectCountry: (id, countryName) =>
            _selectCountry(emit, id, countryName),
      );
    });

    scrollController.addListener(() {
      add(
        const SignUpSelectCountryEvent.loadMore(isTryAgain: false, q: ''),
      );
    });
  }

  void _getAllCountries(
      Emitter<SignUpSelectCountryState> emit, String? q) async {
    emit(state.copyWith(
        getAllCountriesState: const SignUpGetAllCountriesState.loading()));

    page = 1;
    if (q!.isEmpty) {
      emit(state.copyWith(countries: []));
    }
    final failureOrCountries = await signUpUsecase((page.toString(), '10', q));
    failureOrCountries.fold(
      (failure) {
        emit(
          state.copyWith(
            getAllCountriesState:
                SignUpGetAllCountriesState.error(failure.message),
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
              countries:
                  q.isNotEmpty ? r.data : [...state.countries, ...r.data],
              hasReachedEnd: r.meta.next == null,
              getAllCountriesState: const SignUpGetAllCountriesState.success()),
        );
      },
    );
  }

  void _loadMore(
    Emitter<SignUpSelectCountryState> emit,
    bool isTryAgin,
    String? q,
  ) async {
    if (state.hasReachedEnd) return;
    if ((scrollController.position.pixels ==
                scrollController.position.maxScrollExtent &&
            !state.isLoadingMoreError) ||
        isTryAgin) {
      emit(
        state.copyWith(
          loadingMore: const LoadingMore.loading(),
        ),
      );
      page == 1 ? page++ : page;
      final failureOrCountries =
          await signUpUsecase((page.toString(), '10', q));
      failureOrCountries.fold(
        (failure) {
          emit(
            state.copyWith(
              countries: state.countries,
              isLoadingMoreError: true,
              loadingMore: LoadingMore.error(failure.message),
            ),
          );
        },
        (r) {
          ++page;
          emit(
            state.copyWith(
              countries: [...state.countries, ...r.data],
              isLoadingMoreError: false,
              hasReachedEnd: r.meta.next == null,
            ),
          );
        },
      );
    }
  }

  void _selectCountry(
      Emitter<SignUpSelectCountryState> emit, int id, String countryName) {
    emit(state.copyWith(
      countrySelectedId: id,
      countrySelectedName: countryName,
    ));
  }
}
