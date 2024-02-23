import 'package:shared_preferences/shared_preferences.dart';

import 'package:news_line_app/core/utils/app_constants.dart';

abstract class StorageService {
  void storeUserInformation(
    String token,
    int userId,
    String? profileImage,
    String fullName,
  );
  String? userToken();
  int? userId();
  String? userProfileImage();
  String userFullName();
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
  void storeUserInformation(
    String token,
    int userId,
    String? profileImage,
    String fullName,
  ) {
    prefs.setString(
      AppConstatns.SHARED_KEY_STORAGE_USER_TOKEN,
      token,
    );
    prefs.setInt(
      AppConstatns.SHARED_KEY_STORAGE_USER_Id,
      userId,
    );
    prefs.setString(
      AppConstatns.SHARED_KEY_STORAGE_USER_Profile_Image,
      profileImage ?? '',
    );
    prefs.setString(
      AppConstatns.SHARED_KEY_STORAGE_USER_FullName,
      fullName,
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

  @override
  String userFullName() {
    return prefs.getString(
      AppConstatns.SHARED_KEY_STORAGE_USER_FullName,
    )!;
  }

  @override
  String? userProfileImage() {
    return prefs.getString(
      AppConstatns.SHARED_KEY_STORAGE_USER_Profile_Image,
    );
  }
}
