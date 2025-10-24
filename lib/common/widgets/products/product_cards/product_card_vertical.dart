import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/styles/shadow.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/common/widgets/icons/circular_icon.dart';
import 'package:proyecto_mathiaz/common/widgets/images/rouded_images.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/brand_title_with.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_price_text.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_title_text.dart';
import 'package:proyecto_mathiaz/features/shop/screens/product_details/product_details.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark= UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=>ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: UShadow.verticalProductShadow,
            borderRadius: BorderRadius.circular(USizes.productImageRadius),
          color: dark? UColors.darkerGrey: UColors.white
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            URoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(USizes.sm),
              backgroundColor: dark? UColors.dark: UColors.light,
              child: Stack(
                children: [
                  Center(child: URoundedImage(imageUrl: UImages.product1Image)),

                  Positioned(
                    top: 12.0,
                    child: URoundedContainer(
                      radius: USizes.sm,
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(horizontal: USizes.sm, vertical: USizes.xs),
                      child: Text('20%', style: Theme.of(context).textTheme.labelLarge!.apply(color: UColors.black),),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: UCircularIcon(icon: Iconsax.heart5, color: Colors.red,),
                  )
                ],
              ),
            ),

            SizedBox(height: USizes.spaceBtwItems/2,),

            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UProductTitleText(title: 'polera plomo hombre',smallSize: true,),
                  SizedBox(height: USizes.spaceBtwItems/2,),
                  UBrandsTitleWith(title: 'polera'),



                ],
              ),
            ),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: USizes.sm),
                  child: UProductPriceText(price: '55'),
                ),
                Container(
                  width: USizes.iconLg*1.2,
                  height: USizes.iconLg*1.2,
                  decoration: BoxDecoration(
                      color: UColors.primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(USizes.cardRadiusMd),
                          bottomRight: Radius.circular(USizes.productImageRadius)
                      )
                  ),
                  child: Icon(Iconsax.add, color: UColors.white,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}







