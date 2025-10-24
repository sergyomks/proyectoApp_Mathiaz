import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';

class UBottomSheetTheme {
  UBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: UColors.white,
    modalBackgroundColor: UColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    constraints: const BoxConstraints(minWidth: double.infinity),
    showDragHandle: true,
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: UColors.black,
    modalBackgroundColor: UColors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    constraints: const BoxConstraints(minWidth: double.infinity),
    showDragHandle: true,
  );
}
