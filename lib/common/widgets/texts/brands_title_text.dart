import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/enums.dart';

class UBrandsTitleText extends StatelessWidget {
  const UBrandsTitleText({
    super.key, required this.title, this.color, this.maxLines=1, this.textAlign=TextAlign.center,this.brandTextSize=TextSizes.small,
  });

  final String title;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Text(textAlign: textAlign,maxLines: maxLines,title, style:brandTextSize== TextSizes.small? Theme.of(context).textTheme.labelMedium!.apply(color: color):brandTextSize== TextSizes.medium? Theme.of(context).textTheme.bodyLarge!.apply(color: color): brandTextSize== TextSizes.large? Theme.of(context).textTheme.titleLarge!.apply(color: color): Theme.of(context).textTheme.bodyMedium!.apply(color: color),overflow: TextOverflow.ellipsis,);
  }
}