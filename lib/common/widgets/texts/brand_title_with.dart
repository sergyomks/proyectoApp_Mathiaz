import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/brands_title_text.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/enums.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UBrandsTitleWith extends StatelessWidget {
  const UBrandsTitleWith({
    super.key, required this.title, this.maxLines=1, this.textAlign=TextAlign.center, this.brandTextSize=TextSizes.small, this.textColor, this.iconColor=UColors.primary,
  });
final String title;
final int maxLines;
final TextAlign? textAlign;
final TextSizes brandTextSize;
final Color? textColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: UBrandsTitleText(title: title,maxLines: maxLines,textAlign: textAlign, brandTextSize: brandTextSize, color: textColor,)),
        SizedBox(width: USizes.xs,),
        Icon(Iconsax.verify5, color: UColors.primary,size: USizes.iconXs,)
      ],
    );
  }
}