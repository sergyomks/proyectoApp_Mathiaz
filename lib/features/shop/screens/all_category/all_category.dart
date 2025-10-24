import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/brands/brand_card.dart';
import 'package:proyecto_mathiaz/common/widgets/layouts/grid_layout.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/features/shop/screens/all_category/category_products.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Categorías',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [
            USectionHeading(title: 'Categorias populares', showActionButton: false,),
            SizedBox(height: USizes.spaceBtwItems,),
            UGridLayout(itemCount: 2, itemBuilder: (context,index)=>UBrandCard(onTap: ()=>Get.to(()=>CategoryProductsScreen()),), mainAxisExtent: 80,)
          ],
        ),
        ),

      ),
    );
  }
}
