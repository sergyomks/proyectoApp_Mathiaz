import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:proyecto_mathiaz/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,

              children: [
                OnBoarding(
                  animation: UImages.onboarding1Animation,
                  title: UTexts.onboardingTitle1,
                  subTitle: UTexts.onboardingSubTitle1,
                ),
                OnBoarding(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onboardingTitle2,
                  subTitle: UTexts.onboardingSubTitle2,
                ),
                OnBoarding(
                  animation: UImages.onboarding3Animation,
                  title: UTexts.onboardingTitle3,
                  subTitle: UTexts.onboardingSubTitle3,
                ),
              ],
            ),
            OnBoardingDotNavigation(),

            OnBoardingNextButton(),

            OnBoardingSkipButton(),
          ],
        ),
      ),
    );
  }
}
