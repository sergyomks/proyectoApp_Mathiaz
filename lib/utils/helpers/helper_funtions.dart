import 'package:flutter/material.dart';

class UHelperFunctions {
  UHelperFunctions._();

  static Color? getColor(String value) {
    /// Define your product specific colors here and it will match the attribute colors and show specific 🟠🟡🟢🔵🟣🟤

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'verde') {
      return Colors.green;
    } else if (value == 'rojo') {
      return Colors.red;
    } else if (value == 'azul') {
      return Colors.blue;
    } else if (value == 'azul oscuro') {
      return Colors.blueGrey;
    } else if (value == 'rosa') {
      return Colors.pink;
    } else if (value == 'gris') {
      return Colors.grey;
    } else if (value == 'morado') {
      return Colors.purple;
    } else if (value == 'negro') {
      return Colors.black;
    } else if (value == 'white') {
      return Colors.white;
    } else if (value == 'amarillo') {
      return Colors.yellow;
    } else if (value == 'naranja') {
      return Colors.deepOrange;
    } else if (value == 'plomo') {
      return Colors.brown;
    } else if (value == 'verde azulado') {
      return Colors.teal;
    } else if (value == 'celeste') {
      return Colors.indigo;
    } else if (value == 'gris oscuro') {
      return Colors.grey;
    } else {
      return null;
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
