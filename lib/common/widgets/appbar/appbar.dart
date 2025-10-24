import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/device_helpers.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPessed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPessed;

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: USizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: Get.back,
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? UColors.white : UColors.dark,
                ),
              )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPessed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelpers.getAppBarHeight());
}
