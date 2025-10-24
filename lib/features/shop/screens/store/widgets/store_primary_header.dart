import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:proyecto_mathiaz/common/widgets/textfields/search_bar.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: USizes.storePrimaryHeaderHeight + 10),
        UPrimaryHeaderContainer(
            height: USizes.storePrimaryHeaderHeight,

            child: UAppBar(
              title: Text('Productos', style: Theme.of(context).textTheme.headlineMedium!.apply(color: UColors.white),),
              actions: [
                UCartCounterIcon()
              ],
            )),

        USearchBar(),
      ],
    );
  }
}