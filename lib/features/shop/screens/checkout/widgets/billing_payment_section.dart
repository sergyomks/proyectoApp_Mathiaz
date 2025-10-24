import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UBillingPaymentSection extends StatelessWidget {
  const UBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        USectionHeading(title: 'Metodo de Pago', buttonTitle: 'cargar',onPressed: (){},),
        SizedBox(height: USizes.spaceBtwItems/2),

        Row(
          children: [
            URoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark? UColors.light: UColors.white,
              padding: EdgeInsets.all(USizes.sm),
              child: Image(image: AssetImage(UImages.masterCard), fit: BoxFit.contain,),
            ),
            SizedBox(width: USizes.spaceBtwItems/2),

            Text('master card', style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
