
import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/layouts/grid_layout.dart';
import 'package:proyecto_mathiaz/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:proyecto_mathiaz/common/widgets/textfields/search_bar.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/features/shop/controllers/home/home_controller.dart';
import 'package:proyecto_mathiaz/features/shop/screens/all_product/all_products.dart';
import 'package:proyecto_mathiaz/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:proyecto_mathiaz/features/shop/screens/home/widgets/home_categories.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:proyecto_mathiaz/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(height: USizes.homePrimaryHeaderHeight + 10),
                UPrimaryHeaderContainer(
                  height: USizes.homePrimaryHeaderHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UHomeAppBar(),
                      SizedBox(height: USizes.spaceBtwSections),
        
                      UHomeCategories(),
                    ],
                  ),
                ),
        
                USearchBar(),
              ],
            ),
            SizedBox(height: USizes.defaultSpace),
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  UPromoSlider(
                    banners: [UImages.homeBanner1, UImages.homeBanner2, UImages.homeBanner3]
                  ),
        
                  const SizedBox(height: USizes.spaceBtwSections),
                  USectionHeading(title: 'Productos Populares', onPressed: ()=>Get.to(()=>AllProductsScreen()),),
                  const SizedBox(height: USizes.spaceBtwItems),
                  
                  
                  UGridLayout(
                    itemCount: 8,
                    itemBuilder: (context, index){
                      return UProductCardVertical();
                    },
                  )
                ],
              ),
        
            ),
        
          ],
        ),
      ),
    );
  }
}










