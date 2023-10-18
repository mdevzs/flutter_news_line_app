import 'package:get_it/get_it.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.I;

Future<void> initDependencies() async {
 await _initSharedPrefs();
  _initStorageService();
}

Future<void> _initSharedPrefs() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
}

void _initStorageService() {
  sl.registerSingleton<StorageService>(StorageServiceImpl(prefs: sl()));
}
