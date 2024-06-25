import 'package:filimo_test/constants.dart';
import 'package:filimo_test/controllers/Bindings/app_bindings.dart';
import 'package:filimo_test/services/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Filimo test',
      debugShowCheckedModeBanner: false,
      locale: const Locale('fa','IR'),
      fallbackLocale: const Locale('en','US'),
      theme: ThemeData(
        scaffoldBackgroundColor: kDarkGreyColor,
        brightness: Brightness.dark,
        fontFamily: 'Yekan',
      ),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.getPages,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 100),
      initialBinding: AppBindings(),
    );
  }
}