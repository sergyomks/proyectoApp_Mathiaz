import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:proyecto_mathiaz/utils/helpers/device_helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: UDeviceHelpers.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelpers.getScreenWidth(context) / 3,
      right: UDeviceHelpers.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
