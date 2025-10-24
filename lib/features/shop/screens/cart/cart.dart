import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/button/elevated_button.dart';
import 'package:proyecto_mathiaz/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:proyecto_mathiaz/features/shop/screens/checkout/checkout.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,title: Text('Carrito de compras', style: Theme.of(context).textTheme.headlineMedium,),),

      body: Padding(
        padding: UPadding.screenPadding,
        child: UCartItems(),
      ),
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(onPressed: ()=>Get.to(()=>CheckoutScreen()), child: Text('CONTINUAR.... S/150.00')),
      ),
    );
  }
}






