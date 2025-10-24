import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class URoundedImage extends StatelessWidget {
  const URoundedImage({
    super.key, this.width, this.height, required this.imageUrl, this.fit=BoxFit.contain, this.applyImageRadius=true, this.border, this.backoundColor, this.padding, this.isNetworkImage=false, this.onTap, this.borderRadius=USizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final BoxFit? fit;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backoundColor;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            border: border,
            color: backoundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ClipRRect(borderRadius:applyImageRadius?  BorderRadius.circular(borderRadius): BorderRadius.zero,child: Image(image:isNetworkImage? NetworkImage(imageUrl): AssetImage(imageUrl), fit: fit,))),
    );
  }
}