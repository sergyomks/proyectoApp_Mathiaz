import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/icons/circular_icon.dart';
import 'package:proyecto_mathiaz/common/widgets/layouts/grid_layout.dart';
import 'package:proyecto_mathiaz/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:proyecto_mathiaz/navigation_menu.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        title: Text('lista de deseos', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [UCircularIcon(icon: Iconsax.add, onPressed: ()=>NavigationController.instance.selectedIndex.value=0)],
      ),

      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UGridLayout(itemCount: 10, itemBuilder: (context, index)=>UProductCardVertical()),
      )),
    );
  }
}
