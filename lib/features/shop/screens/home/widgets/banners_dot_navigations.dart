import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/features/shop/controllers/home/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotNavigation extends StatelessWidget {
  const BannerDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =HomeController.instance;
    return Obx(
      ()=> SmoothPageIndicator(
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
        controller: PageController(initialPage: controller.currentIndex.value),
      ),
    );
  }
}