import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/images/rouded_images.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/brand_title_with.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_title_text.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UCartItem extends StatelessWidget {
  const UCartItem({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark=UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        URoundedImage(
          imageUrl:UImages.product3Image,
          height: 60.0,
          width: 60.0,
          padding: EdgeInsets.all(USizes.sm),
          backoundColor: dark? UColors.darkerGrey: UColors.light,
        ),
        SizedBox(width: USizes.spaceBtwItems,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UBrandsTitleWith(title: 'poleras'),
            UProductTitleText(title: 'Polera Algodón Hombre Bearcliff', maxLines: 1,),

            RichText(text: TextSpan(children: [
              TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: 'blanco ', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(text: 'Talla: ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: 'L', style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        )),
        IconButton(icon: Icon(Icons.delete, color:Colors.red, size: 32,),
        iconSize: 32,
        onPressed: (){},
        )
      ],
    );
  }
}