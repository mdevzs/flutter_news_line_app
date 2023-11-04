import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_entity.dart';

import '../../repository/auth_repository.dart';

class SignUpSelectCountryUsecase extends UseCase<
    Either<Failure, CountriesEntity>,
    (String? page, String? perPage, String? q)> {
  final AuthRepository authRepository;
  SignUpSelectCountryUsecase(this.authRepository);

  @override
  Future<Either<Failure, CountriesEntity>> call(
      (String?, String?, String?) params) {
    final (page, perPage, q) = params;
    return authRepository.getAllCountries(page: page, perPage: perPage, q: q);
  }
}
