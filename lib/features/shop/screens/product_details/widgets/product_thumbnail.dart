import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/icons/circular_icon.dart';
import 'package:proyecto_mathiaz/common/widgets/images/rouded_images.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UProductLandSlader extends StatelessWidget {
  const UProductLandSlader({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      color: dark? UColors.darkerGrey: UColors.light,
      child: Stack(
        children: [
          SizedBox(
            height: 400,
            child: Padding(padding: EdgeInsets.all(USizes.productImageRadius*2),
              child: Center(child: Image(image: AssetImage(UImages.product2Image))),),
          ),
          Positioned(
            left: USizes.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80.0,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: USizes.defaultSpace,),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index)=>URoundedImage(
                    width: 80,
                    backoundColor: dark? UColors.dark:UColors.white,
                    padding: EdgeInsets.all(USizes.sm),
                    border: Border.all(color: UColors.primary),

                    imageUrl: UImages.product4Image),

              ),
            ),
          ),

          UAppBar(
            showBackArrow: true,
            actions: [
              UCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
            ],
          )
        ],
      ),
    );
  }
}