import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/circular_container.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });
  final String text;
  final bool selected;
  final Function(bool?) onSelected;
  @override
  Widget build(BuildContext context) {
    bool isColor = UHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? UColors.white : null),
      shape: isColor ? CircleBorder() : null,
      padding: isColor ? EdgeInsets.zero : null,
      labelPadding: isColor ? EdgeInsets.zero : null,
      avatar: isColor
          ? UCircularContainer(
              width: 50.0,
              height: 50.0,
              backgroundColor: UHelperFunctions.getColor(text)!,
            )
          : null,
      backgroundColor: isColor ? UHelperFunctions.getColor(text) : null,
    );
  }
}
