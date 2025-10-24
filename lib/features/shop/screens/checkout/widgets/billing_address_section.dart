import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UBillingAddressScreen extends StatelessWidget {
  const UBillingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
USectionHeading(title: 'Direccion de envio',buttonTitle:  'cargar', onPressed: (){},),
        Text('pepito pro', style: Theme.of(context).textTheme.titleLarge,),
        SizedBox(height: USizes.spaceBtwItems/2),
        Row(
          children: [
            Icon(Icons.phone, size: USizes.iconSm,color: UColors.darkGrey,),
            SizedBox(width: USizes.spaceBtwItems),
            Text('987654321')
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems/2),
        Row(
          children: [
            Icon(Icons.location_city, size: USizes.iconSm,color: UColors.darkGrey,),
            SizedBox(width: USizes.spaceBtwItems),
            Expanded(child: Text('jr huscar 23, tambo,huancayo,junin', softWrap: true,))
          ],
        )
      ],
    );
  }
}
