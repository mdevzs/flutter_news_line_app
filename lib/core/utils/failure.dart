import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
   required String message,
  }) = _ServerFailuer;

  const factory Failure.generalFailure({
   required String message,
  }) = _GeneralFailuer;
}
