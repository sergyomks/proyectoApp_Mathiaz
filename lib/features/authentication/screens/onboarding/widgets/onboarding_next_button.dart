import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/widgets/button/elevated_button.dart';
import 'package:proyecto_mathiaz/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwInputFields,
      child: UElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(
          () => Text(
            controller.currentIndex.value == 2 ? "Empezar" : "Siguiente",
          ),
        ),
      ),
    );
  }
}
