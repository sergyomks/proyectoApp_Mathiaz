import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/button/elevated_button.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,
      title: Text('Agregar nueva dirección', style: Theme.of(context).textTheme.headlineMedium,)),

      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Nombres y Apellidos'),),
            SizedBox(height: USizes.spaceBtwInputFields,),
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'N° Celular'),),
            SizedBox(height: USizes.spaceBtwInputFields,),
            Row(
              children: [
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Jr/Av/N°'),)),
                SizedBox(width: USizes.spaceBtwInputFields,),
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_3), labelText: 'distrito'),)),
              ],
            ),
            SizedBox(height: USizes.spaceBtwInputFields,),
            Row(
              children: [

                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_4), labelText: 'provincia'),)),
                SizedBox(width: USizes.spaceBtwInputFields,),
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_41), labelText: 'departamento'),)),
              ],
            ),

            SizedBox(height: USizes.spaceBtwSections),
            UElevatedButton(onPressed: (){}, child: Text('Guardar'))
          ],
        ),
        ),
      ),
      );
  }
}
