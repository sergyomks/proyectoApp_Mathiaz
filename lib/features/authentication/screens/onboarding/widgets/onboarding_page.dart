import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


import 'package:proyecto_mathiaz/utils/helpers/device_helpers.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,
    required this.animation,
    required this.title,
    required this.subTitle,
  });
  final String animation;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UDeviceHelpers.getAppBarHeight()),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subTitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
