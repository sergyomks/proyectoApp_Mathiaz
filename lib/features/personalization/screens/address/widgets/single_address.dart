import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class USingleAddress extends StatelessWidget {
  const USingleAddress({
    super.key, required this.isSelected,
  });
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final dark= UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: isSelected? UColors.primary.withValues(alpha: 0.5): Colors.transparent,
      borderColor: isSelected? Colors.transparent:dark ? UColors.darkerGrey: UColors.grey,
      padding: EdgeInsets.all(USizes.md),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('direccion de pepito', style: Theme.of(context).textTheme.titleLarge,maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: USizes.spaceBtwItems/2,),
              Text('987654321', maxLines: 1,overflow: TextOverflow.ellipsis,),
              Text('jr. huascar N° 256,tambo, huancayo,junin'),
            ],),

          if (isSelected)
            Positioned(
              bottom: 0,
              top: 0,
              right: 6,
              child: Icon(Iconsax.tick_circle5)
            ),
        ],
      )
    );
  }
}