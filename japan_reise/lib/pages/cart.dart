import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';
 class CartPage extends StatelessWidget {
   const CartPage({super.key});

   @override
   Widget build(BuildContext context) {
     return Consumer<CartModel>(
         builder: (context, cartModel, child) =>
             Scaffold(
               backgroundColor: Color.fromARGB(255, 222, 210, 243),
               appBar: AppBar(
                 backgroundColor: Colors.transparent,
                 elevation: 0,
                 title: Text(
                   "Warenkorb",
                   style: TextStyle(
                     color: Colors.white
                   ),
                 ),
                 centerTitle: true
               ),
             )
     );
     ;
   }
 }
