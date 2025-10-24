import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/common/widgets/icons/circular_icon.dart';
import 'package:proyecto_mathiaz/common/widgets/images/rouded_images.dart';
import 'package:proyecto_mathiaz/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'poleras',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [
            USectionHeading(title: 'Poleras para hombres', onPressed: (){},),
            SizedBox(height: USizes.spaceBtwItems/2,),
            SizedBox(height: 120,child: ListView.separated(
                separatorBuilder: (context, index)=>SizedBox(width: USizes.spaceBtwItems/2),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                  return UProductCardHorizontal();
              },
                )),


            USectionHeading(title: 'Poleras para damas', onPressed: (){},),
            SizedBox(height: USizes.spaceBtwItems/2,),
            SizedBox(height: 120,child: ListView.separated(
              separatorBuilder: (context, index)=>SizedBox(width: USizes.spaceBtwItems/2),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return UProductCardHorizontal();
              },
            )),

            USectionHeading(title: 'Poleras para niñ@s', onPressed: (){},),
            SizedBox(height: USizes.spaceBtwItems/2,),
            SizedBox(height: 120,child: ListView.separated(
              separatorBuilder: (context, index)=>SizedBox(width: USizes.spaceBtwItems/2),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return UProductCardHorizontal();
              },
            ))
          ],
        ),
        ),
      ),
    );
  }
}


