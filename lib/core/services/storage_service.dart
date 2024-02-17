import 'package:shared_preferences/shared_preferences.dart';

import 'package:news_line_app/core/utils/app_constants.dart';

abstract class StorageService {
  void storeUserInformation(String token, int userId);
  String? userToken();
  int? userId();
  void setIsFirstTimeUseTheApp(bool isFirstTime);
  bool isFirstTimeAppUsed();
}

class StorageServiceImpl implements StorageService {
  SharedPreferences prefs;
  StorageServiceImpl({
    required this.prefs,
  });

  @override
  bool isFirstTimeAppUsed() {
    return prefs.getBool(
          AppConstatns.SHARED_KEY_STORAGE_FIRST_TIME_Use_APP,
        ) ??
        true;
  }

  @override
  void setIsFirstTimeUseTheApp(bool isFirstTime) {
    prefs.setBool(
      AppConstatns.SHARED_KEY_STORAGE_FIRST_TIME_Use_APP,
      isFirstTime,
    );
  }

  @override
  void storeUserInformation(String token, int userId) {
    prefs.setString(
      AppConstatns.SHARED_KEY_STORAGE_USER_TOKEN,
      token,
    );
    prefs.setInt(
      AppConstatns.SHARED_KEY_STORAGE_USER_Id,
      userId,
    );
  }

  @override
  String? userToken() {
    return prefs.getString(
      AppConstatns.SHARED_KEY_STORAGE_USER_TOKEN,
    );
  }

  @override
  int? userId() {
    return prefs.getInt(
      AppConstatns.SHARED_KEY_STORAGE_USER_Id,
    );
  }
}
