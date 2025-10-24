import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/onboarding/onboarding.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: Scaffold(
        backgroundColor: UColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: UColors.white,),
        ),
      ),
    );
  }
}
