import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/brands/brand_show.dart';
import 'package:proyecto_mathiaz/common/widgets/layouts/grid_layout.dart';
import 'package:proyecto_mathiaz/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      children: [
        Padding(

          padding: const EdgeInsets.symmetric(horizontal:USizes.defaultSpace),
          child: Column(
            children: [
              UBrandsShow(images: [UImages.product2Image, UImages.product3Image, UImages.product4Image],),
              UBrandsShow(images: [UImages.product2Image, UImages.product3Image, UImages.product4Image],),
              SizedBox(height: USizes.spaceBtwItems,),
              USectionHeading(title: 'Mas Productos', onPressed: (){},),
              UGridLayout(itemCount: 10, itemBuilder: (context, index){
                return UProductCardVertical();
              }),
              SizedBox(height: USizes.spaceBtwSections,)
            ],
          ),
        )
      ],
    );
  }
}