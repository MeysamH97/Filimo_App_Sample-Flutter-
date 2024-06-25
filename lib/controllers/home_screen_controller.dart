import 'package:carousel_slider/carousel_slider.dart';
import 'package:filimo_test/widgets/account_widget.dart';
import 'package:filimo_test/widgets/category_screen.dart';
import 'package:filimo_test/widgets/hom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  final RxInt _selectedPageIndex = 0.obs;
  final RxInt _currentSlide = 0.obs;
  final Rx<CarouselController> _carouselController = CarouselController().obs;
  List<Widget> homeScreenWidgets = [
    const HomeWidget(),
    const CategoryScreen(),
    const AccountWidget(),
  ];

  int get selectedPageIndex => _selectedPageIndex.value;
  int get currentSlide => _currentSlide.value;
  CarouselController get carouselController => _carouselController.value;

  onChangeSlide(int index,CarouselPageChangedReason reason){
    _currentSlide.value = index;
  }

  onDotClick(int index){
    _currentSlide.value = index;
    _carouselController.value.animateToPage(index);
  }

  void onItemTapped(int index) {
      _selectedPageIndex.value = index;
  }
}