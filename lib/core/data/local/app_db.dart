import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../../objectbox.g.dart';

class AppDb {
  late final Store store;

  AppDb._create(this.store);

  static Future<AppDb> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(
      directory: join(docsDir.path, "news-app-objectbox"),
    );
    return AppDb._create(store);
  }
}