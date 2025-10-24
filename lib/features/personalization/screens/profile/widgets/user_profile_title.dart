import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/edit_profile/edit_profile.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('pepito', style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text(
        'pepito@gmail.com',
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: IconButton(
        onPressed: () => Get.to(() => EditProfileScreen()),
        icon: Icon(Iconsax.edit),
      ),
    );
  }
}
