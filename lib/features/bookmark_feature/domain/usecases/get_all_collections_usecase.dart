import 'package:dartz/dartz.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/failure.dart';
import '../entities/bookmarks.dart';
import '../repository/bookmark_repository.dart';

class GetAllCollectionsUsecase
    extends UseCase<Either<Failure, List<Bookmarks>>, NoParams> {
  final BookmarkRepository repository;

  GetAllCollectionsUsecase(this.repository);
  @override
  Future<Either<Failure, List<Bookmarks>>> call(NoParams params) async {
    final bookmarks = await repository.getAllCollection();
    bookmarks.map((r) => r.insert(0, Bookmarks(id: 0, name: '+')));
    return bookmarks;
  }
}
