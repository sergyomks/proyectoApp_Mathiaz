import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/icons/circular_icon.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UProductQuantity extends StatelessWidget {
  const UProductQuantity({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark=UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        UCircularIcon(icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: USizes.iconSm,
          color: dark ? UColors.white: UColors.black,
          backgroundColor: dark ? UColors.darkerGrey: UColors.light,
        ),
        SizedBox(width: USizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: USizes.spaceBtwItems,),
        UCircularIcon(icon: Iconsax.add,
          width: 32,
          height: 32,
          size: USizes.iconSm,
          color: UColors.white,
          backgroundColor: UColors.primary,
        ),
      ],
    );
  }
}