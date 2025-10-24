import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final storage=GetStorage();
  final pageController = PageController();
  RxInt currentIndex = 0.obs;
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(index) {
    pageController.jumpToPage(index);
    currentIndex.value = index;
  }

  void nextPage() {

    if (currentIndex.value == 2) {
      storage.write('es tu primera vez en este app?', false);
      Get.offAll(() => LoginScreen());
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(currentIndex.value);
  }
}
