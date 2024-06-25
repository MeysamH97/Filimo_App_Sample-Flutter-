import 'package:filimo_test/constants.dart';
import 'package:filimo_test/controllers/home_screen_controller.dart';
import 'package:filimo_test/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/filimo_logo.png',
                width: 25,
              ),
              label: 'ویترین',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.list_rounded,
              ),
              label: 'دسته بندی ها',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.videocam_rounded,
              ),
              label: 'اکانت من',
            ),
          ],
          selectedItemColor: kYellowColor,
          showUnselectedLabels: false,
          currentIndex: controller.selectedPageIndex,
          onTap: controller.onItemTapped,
        ),
      ),
      body:
          Obx(() => controller.homeScreenWidgets[controller.selectedPageIndex]),
    );
  }
}
