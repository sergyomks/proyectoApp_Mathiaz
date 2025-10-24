import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UBillingAmountSection extends StatelessWidget {
  const UBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Text('subTotal', style: Theme.of(context).textTheme.bodyMedium,)),
            Spacer(),
            Text('S/50.00', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems/2,),
        Row(
          children: [
            Expanded(child: Text('Tarifa de envío', style: Theme.of(context).textTheme.bodyMedium,)),
            Spacer(),
            Text('S/10.00', style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems/2,),
        Row(
          children: [
            Expanded(child: Text('Impuesto', style: Theme.of(context).textTheme.bodyMedium,)),
            Spacer(),
            Text('S/0.18', style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems/2,),
        Row(
          children: [
            Expanded(child: Text('Total', style: Theme.of(context).textTheme.bodyMedium,)),
            Spacer(),
            Text('S/60.18', style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
      ],
    );
  }
}