import 'package:filimo_test/screens/home_screen.dart';
import 'package:filimo_test/screens/splash_screen.dart';
import 'package:filimo_test/screens/video_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash';
  static const String homeScreen = '/home';
  static const String videoScreen = '/video';

  static final List<GetPage> getPages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: videoScreen, page: () => VideoScreen()),
  ];
}
