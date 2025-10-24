import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/layouts/grid_layout.dart';
import 'package:proyecto_mathiaz/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:proyecto_mathiaz/common/widgets/products/sortable_products.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget{
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Todos los productos',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: USortableProduct(),
        ),
      ),
    );
  }
}


