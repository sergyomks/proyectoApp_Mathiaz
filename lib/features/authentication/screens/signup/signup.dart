import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/button/social_button.dart';
import 'package:proyecto_mathiaz/common/widgets/login_signup/form_divider.dart';
import 'package:proyecto_mathiaz/features/authentication/controllers/signup/signup_controller.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              USignupForm(),

              SizedBox(height: USizes.spaceBtwSections),
              UFormDivider(title: UTexts.orSignInWith),
              SizedBox(height: USizes.spaceBtwSections),
              USocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
