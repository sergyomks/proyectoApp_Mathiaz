import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/widgets/custom_shapes/rounded_container.dart';
import 'package:proyecto_mathiaz/utils/constants/colors.dart';
import 'package:proyecto_mathiaz/utils/constants/sizes.dart';
import 'package:proyecto_mathiaz/utils/helpers/helper_funtions.dart';

class UPromoCode extends StatelessWidget {
  const UPromoCode({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark=UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(left: USizes.md, top: USizes.sm, right: USizes.sm,bottom: USizes.sm),
      child: Row(
        children: [
          Flexible(child: TextFormField(decoration: InputDecoration(hintText: 'tiene codigo de descuento? aplique aqui',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),


          )
          ),
          SizedBox(
              width: 80.0,
              child: ElevatedButton(onPressed: null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withValues(alpha: 0.2),
                    foregroundColor: dark? Colors.white.withValues(alpha: 0.5): UColors.dark.withValues(alpha: 0.5),
                    side: BorderSide(color: Colors.grey.withValues(alpha: 0.1))
                ), child: Text('Aplicar'),
              ))
        ],
      ),
    );
  }
}