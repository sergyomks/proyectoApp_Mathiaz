import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/button/social_button.dart';
import 'package:proyecto_mathiaz/common/widgets/login_signup/form_divider.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/login/widgets/login_form.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/login/widgets/login_header.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(

        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ULoginHeader(),

              SizedBox(height: USizes.spaceBtwSections),

              ULoginForm(),

              SizedBox(height: USizes.spaceBtwSections),

              UFormDivider(title: UTexts.orSignInWith),

              SizedBox(height: USizes.spaceBtwSections),

              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
