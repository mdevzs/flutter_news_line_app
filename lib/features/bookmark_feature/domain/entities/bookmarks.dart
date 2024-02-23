import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:objectbox/objectbox.dart';


@Entity()
class Bookmarks {
  int? id;
  final String name;
  final news = ToMany<NewsEntity>();
  Bookmarks({this.id, required this.name});

  @override
  String toString() {
    return 'id: $id, name: $name';
  }
}
