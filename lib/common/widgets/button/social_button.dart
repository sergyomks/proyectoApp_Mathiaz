import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButton(UImages.googleIcon,(){}),
        SizedBox(width: USizes.spaceBtwItems),
        buildButton(UImages.facebookIcon,(){}),


      ],
    );
  }

  Container buildButton(String image, VoidCallback onPressed) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: UColors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Image.asset(
            image,
            height: USizes.iconMd,
            width: USizes.iconMd,
          ),
        ),
      );
  }
}