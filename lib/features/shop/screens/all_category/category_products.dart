import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/brands/brand_card.dart';
import 'package:proyecto_mathiaz/common/widgets/products/sortable_products.dart';
import 'package:proyecto_mathiaz/features/shop/screens/all_product/all_products.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Poleras',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [
            UBrandCard(),
            SizedBox(height: USizes.spaceBtwSections,),

            USortableProduct()
          ],
        ),
        ),
      ),
    );
  }
}
