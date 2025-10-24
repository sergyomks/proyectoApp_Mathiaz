import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UElevatedButtonTheme {
  UElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: UColors.primary,
      foregroundColor: UColors.light,
      disabledForegroundColor: UColors.darkGrey,
      disabledBackgroundColor: UColors.buttonDisabled,
      side: const BorderSide(color: UColors.light),
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: UColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(USizes.buttonRadius),
      ),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: UColors.primary,
      foregroundColor: UColors.light,
      disabledForegroundColor: UColors.darkGrey,
      disabledBackgroundColor: UColors.darkGrey,
      side: const BorderSide(color: UColors.light),
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: UColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(USizes.buttonRadius),
      ),
    ),
  );
}
