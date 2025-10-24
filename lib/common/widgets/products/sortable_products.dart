import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/layouts/grid_layout.dart';
import 'package:proyecto_mathiaz/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class USortableProduct extends StatelessWidget {
  const USortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Nombre','Menor precio','Mayor precio', 'Mas vendidos', 'Nuevos'].map((filter){
            return DropdownMenuItem(value: filter,child: Text(filter),);
          }).toList(),
        ),
        SizedBox(height: USizes.spaceBtwSections,),

        UGridLayout(itemCount: 20, itemBuilder: (context, index)=>UProductCardVertical())
      ],
    );
  }
}