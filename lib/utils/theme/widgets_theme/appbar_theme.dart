import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UAppBarTheme {
  UAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: false,
    iconTheme: IconThemeData(color: UColors.black, size: USizes.iconMd),
    titleTextStyle: TextStyle(
      color: UColors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    actionsIconTheme: IconThemeData(color: UColors.black, size: USizes.iconMd),
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: false,
    iconTheme: IconThemeData(color: UColors.black, size: USizes.iconMd),
    titleTextStyle: TextStyle(
      color: UColors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    actionsIconTheme: IconThemeData(color: UColors.white, size: USizes.iconMd),
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
  );
}
