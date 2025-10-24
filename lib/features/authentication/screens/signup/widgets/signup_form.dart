import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/widgets/button/elevated_button.dart';
import 'package:proyecto_mathiaz/features/authentication/controllers/signup/signup_controller.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/signup/verify_email.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';
import 'package:proyecto_mathiaz/utils/validators/validation.dart';

class USignupForm extends StatelessWidget {
  const USignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =SignUpController.instance;
    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value)=>UValidator.validateEmptyText('Nombres', value),
                  decoration: InputDecoration(
                    labelText: UTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: USizes.spaceBtwInputFields),
              Expanded(

                child: TextFormField(
                  validator: (value)=>UValidator.validateEmptyText('Apellidos', value),
                  decoration: InputDecoration(
                    labelText: UTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: USizes.spaceBtwInputFields),
          TextFormField(
            validator: (value)=>UValidator.validateEmail(value),
            decoration: InputDecoration(
              labelText: UTexts.email,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          SizedBox(height: USizes.spaceBtwInputFields),
          TextFormField(
            validator: (value)=>UValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
              labelText: UTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: USizes.spaceBtwInputFields),
          TextFormField(
            validator: (value)=>UValidator.validatePassword(value),
            decoration: InputDecoration(
              labelText: UTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye),
            ),
          ),
          SizedBox(height: USizes.spaceBtwInputFields / 2),
      
          UPrivacyPolicyCheckbox(),
      
          SizedBox(height: USizes.spaceBtwItems),
          UElevatedButton(
            onPressed: () =>controller.registerUser ,
            child: Text(UTexts.createAccount),
          ),
        ],
      ),
    );
  }
}
