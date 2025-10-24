import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/products/cart/cart_item.dart';
import 'package:proyecto_mathiaz/common/widgets/products/cart/product_quantity_add_remove.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_price_text.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UCartItems extends StatelessWidget {
  const UCartItems({
    super.key,  this.showAddRemoveButtons=true,
  });
final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(shrinkWrap: true,separatorBuilder: (context, index)=>SizedBox(height: USizes.spaceBtwSections,), itemCount: 3,itemBuilder: (context, index){
      return Column(
        children: [
          UCartItem(),
          if(showAddRemoveButtons)  SizedBox(height: USizes.spaceBtwItems,),
          if(showAddRemoveButtons)  Row(
            children: [
              SizedBox(width: 75.0,),
              UProductQuantity(),

              Spacer(),
              UProductPriceText(price: '50')
            ],
          )
        ],
      );
    });
  }
}