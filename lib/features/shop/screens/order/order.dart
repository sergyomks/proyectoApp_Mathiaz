import 'package:flutter/material.dart';
import 'package:proyecto_mathiaz/common/styles/padding.dart';
import 'package:proyecto_mathiaz/common/widgets/appbar/appbar.dart';
import 'package:proyecto_mathiaz/features/shop/screens/order/widgets/orders_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,title: Text('Mis Pedidos', style: Theme.of(context).textTheme.headlineSmall,),),
      
      body: Padding(padding: UPadding.screenPadding,child: UOrdersListItems(),),
    );
  }
}
