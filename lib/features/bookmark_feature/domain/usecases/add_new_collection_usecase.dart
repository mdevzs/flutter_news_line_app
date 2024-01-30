import 'package:dartz/dartz.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/failure.dart';
import '../entities/bookmarks.dart';
import '../repository/bookmark_repository.dart';
class AddNewCollectionUsecase
    extends UseCase<Either<Failure, Unit>, Bookmarks> {
  final BookmarkRepository repository;

  AddNewCollectionUsecase(this.repository);
  @override
  Future<Either<Failure, Unit>> call(Bookmarks params) {
    return repository.addCollection(params);
  }
}
