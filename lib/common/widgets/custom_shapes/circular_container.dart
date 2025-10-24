import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';

class UCircularContainer extends StatelessWidget {
  const UCircularContainer({
    super.key, this.height= 400, this.width=400, this.backgroundColor=UColors.white, this.padding, this.margin, this.child
  });
 final double height , width;
 final Color backgroundColor;
 final EdgeInsetsGeometry? padding, margin;
 final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(1000),
      ),

      child: child,

    );
  }
}