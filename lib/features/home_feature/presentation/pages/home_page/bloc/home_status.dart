import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';

part 'home_status.freezed.dart';

@freezed
class HomeStatus with _$HomeStatus {
  const factory HomeStatus.initial() = _HomeInitial;
  const factory HomeStatus.loading() = _HomeLoading;
  const factory HomeStatus.success(HomeEntity home) = _HomeSuccess;
  const factory HomeStatus.error(String message) = _HomeError;
}
