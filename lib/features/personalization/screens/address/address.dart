import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/address/add_new_address.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/address/widgets/single_address.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget{
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: UAppBar(showBackArrow: true,
      title: Text('Mi direccion', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [
            USingleAddress(isSelected: true,),
            SizedBox(height: USizes.spaceBtwItems,),
            USingleAddress(isSelected: false,),

          ],
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Get.to(()=>AddNewAddressScreen()),
        backgroundColor: UColors.primary,
        child: Icon(Iconsax.add),
      ),
    );
  }
}


