// ignore_for_file: constant_identifier_names

class AppConstatns {
  static const BASE_URL = 'http://192.168.0.103:3000';
  static const SHARED_KEY_STORAGE_FIRST_TIME_Use_APP =
      'sharedKeyStorageFirstTimeUseApp';
  static const SHARED_KEY_STORAGE_USER_TOKEN = 'sharedKeyStorageUserToken';
  static const Error_Picture_ASSET = 'assets/icons/error_picture.png';
  static const Profile_Picture_ASSET = 'assets/icons/profile2.png';
  static const onBoardingList = <Map<String, String>>[
    {
      'image': 'assets/images/onboarding1.png',
      'title': 'Stay Informed, Anytime,\nAnywhere',
      'description':
          'Welcome to our news app, your go-to source for breaking news, exclusive stories, and personalized content.'
    },
    {
      'image': 'assets/images/onboarding2.png',
      'title': 'Be a Knowledgeable\nGlobal Citizen',
      'description':
          'Unlock a personalized news experience that matches your interests and preferences.Your news, your way!'
    },
    {
      'image': 'assets/images/onboarding3.png',
      'title': 'Elevate Your News\nExperience Now!',
      'description':
          'Join our vibrant community of news enthusiasts. Share your thoughts, and engage in meaningful discussions.'
    },
  ];

  static const enableNotifications = <Map<String, bool>>[
    {
      'Breaking news notifications': true,
    },
    {
      'News recommendations': true,
    },
    {
      'Top story notifications': true,
    },
    {
      'Trending stories': true,
    },
    {
      'Daily or weekly digest': true,
    },
    {
      'Stories from those I follow': true,
    },
    {
      'Someone is following me': true,
    },
    {
      'Someone commented on my story': true,
    },
    {
      'Someone replied to my comment': true,
    },
  ];
}
