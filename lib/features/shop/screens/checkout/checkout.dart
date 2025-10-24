import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/button/elevated_button.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/common/widgets/screens/success_screen.dart';
import 'package:proyecto_mathiaz/common/widgets/textfields/promo_code.dart';
import 'package:proyecto_mathiaz/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:proyecto_mathiaz/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:proyecto_mathiaz/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:proyecto_mathiaz/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:proyecto_mathiaz/navigation_menu.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,title: Text('Verificar Pedido', style: Theme.of(context).textTheme.headlineMedium,),),

      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              UCartItems(showAddRemoveButtons: false,),
              SizedBox(height: USizes.spaceBtwSections),

              UPromoCode(),
              SizedBox(height: USizes.spaceBtwSections),

              URoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(USizes.md),
                backgroundColor: Colors.transparent,
                child: Column(
                  children: [
                    UBillingAmountSection(),
                    SizedBox(height: USizes.spaceBtwItems),

                    UBillingPaymentSection(),
                    SizedBox(height: USizes.spaceBtwItems),
                    UBillingAddressScreen()
                  ],
                ),

              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(onPressed: ()=>Get.to(()=>SuccessScreen(title: 'Pago exitoso',subTitle: 'Su pedido será enviado pronto',image: UImages.successfulPayment,onTap: ()=>Get.offAll(()=>NavigationMenu()))), child: Text('CONTINUAR.... S/60.18')),
      ),
    );
  }
}




