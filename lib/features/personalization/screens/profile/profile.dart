import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/address/address.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/profile/widgets/setting_menu_title.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/profile/widgets/user_profile_title.dart';
import 'package:proyecto_mathiaz/features/shop/screens/order/order.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  UProfilePrimaryHeader(),
                  
                  Padding(
                    padding: const EdgeInsets.all(USizes.defaultSpace),
                    child: Column(
                      children: [
                        UserProfileTitle(),
                        SizedBox(height: USizes.spaceBtwItems,),
              
                        USectionHeading(title: 'Configuración',showActionButton: false,),
              
                        SettingMenuTitle(
                          title: 'Mi dirección',
                          subtitle: 'establecer una dirección para recibir pedidos',
                          icon: Iconsax.safe_home,
                          onTap: ()=>Get.to(()=>AddressScreen()),
                        ),
                        SettingMenuTitle(title: 'Mi carrito',
                          subtitle: 'agregar, eliminar o modificar productos',
                          icon: Iconsax.shopping_cart,
                          onTap: ()=>Get.to(()=>AddressScreen()),
                        ),

                        SettingMenuTitle(title: 'Mi pedido',
                          subtitle: 'ver el estado de mis pedidos',
                          icon: Iconsax.safe_home,
                          onTap: ()=>Get.to(()=>OrderScreen()),
                        ),
                        SizedBox(height: USizes.spaceBtwSections,),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(onPressed: (){}, child: Text('cerrar sesion')),
                        ),
                        SizedBox(height: USizes.spaceBtwSections,),
                      ],
                    ),
                  )
                ],
              ),
            ),

    );
  }
}






