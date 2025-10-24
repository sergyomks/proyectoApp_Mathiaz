import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/tabbar.dart';
import 'package:proyecto_mathiaz/common/widgets/brands/brand_card.dart';
import 'package:proyecto_mathiaz/common/widgets/texts/sections_heading.dart';
import 'package:proyecto_mathiaz/features/shop/screens/all_category/all_category.dart';
import 'package:proyecto_mathiaz/features/shop/screens/store/widgets/category_tab.dart';
import 'package:proyecto_mathiaz/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrollled){
              return[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 340,
                  pinned: true,
                  floating: false,
                  flexibleSpace: SingleChildScrollView(
                    child: Column(
                      children: [
                        UStorePrimaryHeader(),
                       SizedBox(height: USizes.spaceBtwItems,),
                          
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: USizes.spaceBtwSections),
                         child: Column(
                           children: [
                             USectionHeading(title: 'Categorias', onPressed: ()=>Get.to(()=>AllCategoryScreen()),),
                          
                             SizedBox(
                               height: USizes.brandCardHeight,
                               child: ListView.separated(
                                   separatorBuilder: (context, index)=> SizedBox(width: USizes.spaceBtwItems,),
                                   shrinkWrap: true,
                                   itemCount: 3,
                                   scrollDirection: Axis.horizontal,
                                   itemBuilder: (context, index)=>SizedBox(width: USizes.brandCardWidth,child: UBrandCard())),
                             )
                           ],
                         ),
                       )
                      ],
                    ),
                  ),
                  
                  bottom: UTabBar(
                    tabs: [
                      Tab(child: Text('Hombres'),),
                      Tab(child: Text('Damas'),),
                      Tab(child: Text('Niñ@s'),),
                    ],
                  ),
                )
              ];
            },

            body: TabBarView(
              children: [
                UCategoryTab(),
                UCategoryTab(),
                UCategoryTab()
              ],
        )



        ),
      ),
    );
  }
}










