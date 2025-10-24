import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/common/widgets/images/circular_image.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/brand_title_with.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_price_text.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_title_text.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UPoductData extends StatelessWidget {
  const UPoductData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            URoundedContainer(
              radius: USizes.sm,
              backgroundColor: UColors.yellow.withValues(alpha: 0.8),
              padding: EdgeInsets.symmetric(horizontal: USizes.sm, vertical: USizes.xs),
              child: Text('new', style: Theme.of(context).textTheme.labelLarge!.apply(color: UColors.dark),),
            ),
            SizedBox(width: USizes.spaceBtwItems,),
            Text('S/ 55.00', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: USizes.spaceBtwItems,),
            UProductPriceText(price: '50', isLarge: true,),

            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.share)),
          ],
        ),

        SizedBox(height: USizes.spaceBtwItems/1.5,),
        UProductTitleText(title: 'polera 2025 nueva model'),
        SizedBox(height: USizes.spaceBtwItems/1.5,),
        Row(
          children: [
            UProductTitleText(title: 'estado'),
            SizedBox(width: USizes.spaceBtwItems,),
            Text('en stock', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems/1.5,),

        Row(
          children: [
            UCircularImage(padding: 0,image: UImages.poleraIcon, width: 32.0,height: 32.0,),
            SizedBox(width: USizes.spaceBtwItems),
            UBrandsTitleWith(title: 'polera')
          ],
        )
      ],
    );
  }
}