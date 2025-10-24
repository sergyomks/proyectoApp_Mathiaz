import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/features/chatbot/screens/chatbot.dart';
import 'package:proyecto_mathiaz/features/personalization/screens/profile/profile.dart';
import 'package:proyecto_mathiaz/features/shop/screens/home/home.dart';
import 'package:proyecto_mathiaz/features/shop/screens/store/store.dart';
import 'package:proyecto_mathiaz/features/shop/screens/wishlist/wishlist.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? UColors.dark : UColors.light,
          indicatorColor: dark
              ? UColors.light.withValues(alpha: 0.1)
              : UColors.black.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (int index) {
            controller.selectedIndex.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Inicio'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Productos'),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'lista deseos',
            ),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Perfil'),
            NavigationDestination(
              icon: Icon(Iconsax.message),
              label: 'ChatBoot',
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance=> Get.find();
  RxInt selectedIndex = 0.obs;
  List<Widget> screens = [
    HomeScreen(),
    StoreScreen(),
    Wishlist(),
    ProfileScreen(),
    ChatbotScreen(),
  ];
}
