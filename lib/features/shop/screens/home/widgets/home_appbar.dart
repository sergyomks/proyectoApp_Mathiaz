import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.grey),
          ),
          Text(
            UTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.apply(color: UColors.white),
          ),
        ],
      ),

      actions: [UCartCounterIcon()],
    );
  }
}