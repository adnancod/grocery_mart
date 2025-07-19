import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mart/view_model/cart_bloc/cart_bloc.dart';
import 'package:grocery_mart/utils/app_colors.dart';
import 'package:grocery_mart/models/product_model/product_model.dart';

class CartIncrementDecrement extends StatelessWidget {
  final ProductModel product;
  const CartIncrementDecrement({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final quantity = state.cartItems[product] ?? 0;

        return Row(
          children: [
            IconButton(
              onPressed: quantity > 0
                  ? () => context.read<CartBloc>().add(DecrementQuantity(product))
                  : null,
              icon: Icon(Icons.remove, color: Color(0xFFB3B3B3)),
            ),
            Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(child: Text(quantity.toString())),
            ),
            IconButton(
              onPressed: () => context.read<CartBloc>().add(IncrementQuantity(product)),
              icon: Icon(Icons.add, color: AppColors.primaryColor),
            ),
          ],
        );
      },
    );
  }
}