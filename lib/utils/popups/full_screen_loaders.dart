
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/widgets/loaders/animation_loader.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UFullScreenLoader {
  static void openLoadingDialog(String text) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: UHelperFunctions.isDarkMode(Get.context!) ? UColors.dark : UColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  /// Extra Space
                  const SizedBox(height: 250),

                  /// Animation
                  UAnimationLoader(text: text)
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
