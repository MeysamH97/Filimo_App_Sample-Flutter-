import 'package:filimo_test/controllers/home_screen_controller.dart';
import 'package:filimo_test/controllers/splash_screen_controller.dart';
import 'package:filimo_test/controllers/video_screen_controller.dart';
import 'package:get/get.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashScreenController>(SplashScreenController());
    Get.put<HomeScreenController>(HomeScreenController());
    Get.lazyPut<VideoScreenController>(() => VideoScreenController(),fenix: true);
  }
}
