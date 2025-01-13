class Constants {
  static String api(int? page) =>
      "https://api.unsplash.com/photos?page=${page ?? 1}";
  static String unsplashAccessKey = "UNSPLASHKEY";
  static String appIcon = "assets/images/icon.png";
}
