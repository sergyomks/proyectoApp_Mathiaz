import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/common/widgets/images/rouded_images.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/brand_title_with.dart';
import 'package:proyecto_mathiaz/utils/constants/enums.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({
    super.key, this.showBorder=true, this.onTap
  });
final bool showBorder;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: URoundedContainer(

        height: USizes.brandCardHeight,
        showBorder: showBorder,
        padding: EdgeInsets.all(USizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(child: URoundedImage(imageUrl: UImages.poleraIcon, backoundColor: Colors.transparent,)),
            SizedBox(width: USizes.spaceBtwItems/2,),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UBrandsTitleWith(title: 'poleras', brandTextSize: TextSizes.large,),
                  Text('200 productos', style: Theme.of(context).textTheme.labelMedium, overflow: TextOverflow.ellipsis,)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}