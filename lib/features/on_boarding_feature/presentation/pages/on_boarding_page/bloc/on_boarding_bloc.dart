import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(OnBoardingState()) {
    on<OnBoardingEvent>(_onBoardingPageChange);
  }

  void _onBoardingPageChange(
    OnBoardingEvent event,
    Emitter<OnBoardingState> emit,
  ) {
    emit(OnBoardingState(page: event.page));
  }
}
