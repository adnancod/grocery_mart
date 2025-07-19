import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mart/view/home/cart/widgets/cart_widget.dart';
import 'package:grocery_mart/view_model/cart_bloc/cart_bloc.dart'; // Removed home_bloc import

class CartHome extends StatelessWidget {
  const CartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(side: BorderSide(width: 0.1)),
        title: Text(
          'My Cart',
          style: TextStyle(
            fontFamily: 'Gilroy-Bold',
            fontWeight: FontWeight.w600,
            color: Color(0xFF181725),
            fontSize: 20,
          ),
        ),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final cartItems = state.cartItems.entries.toList();

          return ListView.builder(
            padding: const EdgeInsets.all(16.0), // Moved padding to ListView
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final product = cartItems[index].key;
              final quantity = cartItems[index].value;

              return CartWidget(
                product: product,
              );
            },
          );
        },
      ),
    );
  }
}