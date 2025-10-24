import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/button/elevated_button.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:proyecto_mathiaz/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:proyecto_mathiaz/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:proyecto_mathiaz/features/shop/screens/product_details/widgets/product_thumbnail.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UProductLandSlader(),
            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  UPoductData(),
                  SizedBox(height: USizes.spaceBtwSections,),
                  UProductAtributtes(),
                  SizedBox(height: USizes.spaceBtwSections,),

                  UElevatedButton(onPressed: () {}, child: Text('verificar')),
                  SizedBox(height: USizes.spaceBtwSections,),
                  USectionHeading(title: 'Descripcion', showActionButton: false,),
                  SizedBox(height: USizes.spaceBtwItems,),

                  ReadMoreText(
                    'poleras de algodon 100% con estampado digital, son poleras de alta calidad, con un diseño moderno y atractivo. Estan hechas de algodon 100% y tienen un estampado digital de alta calidad. Son poleras muy comodas y ligeras, ideales para el verano. Tienen un corte moderno y atractivo, que las hace perfectas para cualquier ocasion.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '...ver mas',
                    trimExpandedText: ' menos',
                    moreStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: USizes.spaceBtwSections,),
                ],
              ),
            )

          ],
        ),
      ),

      bottomNavigationBar: UBottomAddToCart(),
    );
  }
}
