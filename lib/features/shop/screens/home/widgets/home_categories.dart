import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/widgets/image_text/vertical_image_text.dart';
import 'package:proyecto_mathiaz/features/shop/screens/sub_category/sub_category.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/images.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/constants/texts.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UTexts.popularCategories, style: Theme.of(context).textTheme.headlineSmall!.apply(color: UColors.white),),
          SizedBox(height: USizes.spaceBtwItems,),
          // Lista horizontal de categorias populares
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems,),
                scrollDirection: Axis.horizontal,
                itemCount: 3,itemBuilder: (context,index){
              return UVerticalImageText(
                title: 'Poleras',
                image: UImages.menCategoryIcon,
                textColor: UColors.white,
                onTap: ()=>Get.to(()=>SubCategoryScreen()),
              );
            }),
          )
        ],
      ),
    );
  }
}

