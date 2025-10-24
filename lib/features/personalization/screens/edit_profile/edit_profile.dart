import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/edit_profile/widgets/user_profile_with_edit_icon.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Editar Perfil',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              UserProfileWithEditIcon(),
              SizedBox(height: USizes.spaceBtwSections),

              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              USectionHeading(
                title: 'Información Personal',
                showActionButton: false,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              UserDetailRow(
                title: 'Nombre Usuario',
                value: 'pepito21',
                onTap: () {},
              ),
              UserDetailRow(title: 'Nombre', value: 'pepito', onTap: () {}),
              SizedBox(height: USizes.spaceBtwItems),
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              USectionHeading(
                title: 'configuracion perfil',
                showActionButton: false,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              UserDetailRow(title: 'ID', value: '234', onTap: () {}),
              UserDetailRow(
                title: 'Email',
                value: 'pepito@gmail',
                onTap: () {},
              ),
              UserDetailRow(title: 'Numero', value: '987654321', onTap: () {}),
              SizedBox(height: USizes.spaceBtwItems),

              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              TextButton(
                onPressed: () {},
                child: Text(
                  'cerrar cuenta',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailRow extends StatelessWidget {
  const UserDetailRow({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onTap,
  });
  final String title, value;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: USizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(child: Icon(icon, size: USizes.iconSm)),
          ],
        ),
      ),
    );
  }
}
