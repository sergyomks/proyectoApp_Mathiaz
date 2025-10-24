import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/styles/shadow.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark= UHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: 0,
        right: USizes.spaceBtwSections,
        left: USizes.spaceBtwSections,
        child: Container(
          height: USizes.searchBarHeight,
          padding: EdgeInsets.symmetric(horizontal: USizes.md),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
              color:dark? UColors.dark: UColors.white,
              boxShadow: UShadow.searchBarShadows
          ),

          child: Row(
            children: [
              Icon(Iconsax.search_normal, color: UColors.darkGrey, size: 30,),
              SizedBox(width: USizes.spaceBtwItems),
              Text(UTexts.searchBarTitle, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),

        ));
  }
}
