import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/chips/choice_chip.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_price_text.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/product_title_text.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UProductAtributtes extends StatelessWidget {
  const UProductAtributtes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        URoundedContainer(
          padding: EdgeInsets.all(USizes.md),
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  USectionHeading(
                    title: 'Promocion',
                    showActionButton: false,
                  ),
                  SizedBox(width: USizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          UProductTitleText(
                            title: 'precio: ',
                            smallSize: true,
                          ),
                          Text(
                            '50',
                            style: Theme.of(context).textTheme.titleMedium!
                                .apply(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                          SizedBox(width: USizes.spaceBtwItems),
                          UProductPriceText(price: '47.00'),
                        ],
                      ),

                      Row(
                        children: [
                          UProductTitleText(
                            title: 'stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'Promocion no disponible',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              UProductTitleText(
                title: 'promocion por invierno',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        SizedBox(height: USizes.spaceBtwItems),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'colores', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'rojo',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'azul',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'naranja',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Tallas', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'S',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'M',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'L',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
