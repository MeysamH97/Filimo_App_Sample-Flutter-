import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:filimo_test/services/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  final RxString _connectionStatus = '-1'.obs;
  final Rx<Connectivity> _connectivity = Connectivity().obs;
  Rx<ConnectivityResult> result = ConnectivityResult.none.obs;

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
        _connectionStatus.value = 'wifi net';
        break;
      case ConnectivityResult.mobile:
        _connectionStatus.value = 'mobile net';
        break;
      case ConnectivityResult.none:
        _connectionStatus.value = '-1';
        Get.snackbar(
          'اینترنت متصل نمی باشد.',
          'لطفا داده ها یا wifi را روشن کنید.',
          snackStyle: SnackStyle.FLOATING,
          snackPosition: SnackPosition.TOP,
        );
        break;
      default:
        _connectionStatus.value = 'Failed to get connectivity.';
        break;
    }
    if (_connectionStatus.value != '-1') {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offNamed(AppRoutes.homeScreen);
      });
    }
  }

  Future<void> initConnectivity() async {
    try {
      result.value = await _connectivity.value.checkConnectivity();
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }

    return _updateConnectionStatus(result.value);
  }

  @override
  void onInit() {
    super.onInit();
    initConnectivity();
    ever(result, (_){
      _connectivity.value.onConnectivityChanged.listen(_updateConnectionStatus);
    });
  }

  @override
  void onClose() {
    super.onClose();
    result.close();
    _connectivity.close();
  }
}