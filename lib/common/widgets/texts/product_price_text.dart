import 'package:flutter/material.dart';

class UProductPriceText extends StatelessWidget {
  const UProductPriceText({
    super.key, this.currentSign='S/ ', required this.price, this.isLarge=false, this.lineThrough=false, this.maxLines=1,
  });
 final String currentSign, price;
 final int maxLines;
 final bool isLarge, lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(currentSign+price,
      style:isLarge? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough? TextDecoration.lineThrough:null):Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough? TextDecoration.lineThrough:null), maxLines: maxLines, overflow: TextOverflow.ellipsis,);
  }
}