import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/button/elevated_button.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';
import 'package:proyecto_mathiaz/utils/helpers/device_helpers.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onTap,
  });

  final String title, subTitle, image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          children: [
            Image.asset(
              image,
              height: UDeviceHelpers.getScreenWidth(context) * 0.4,
            ),
            SizedBox(height: USizes.spaceBtwItems),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwSections),
            UElevatedButton(onPressed: onTap, child: Text(UTexts.uContinue)),
          ],
        ),
      ),
    );
  }
}
