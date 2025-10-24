import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';

class UChipTheme {
  UChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    selectedColor: UColors.primary,
    disabledColor: UColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: UColors.black),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: UColors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    selectedColor: UColors.primary,
    disabledColor: UColors.darkGrey,
    labelStyle: const TextStyle(color: UColors.white),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: UColors.white,
  );
}
