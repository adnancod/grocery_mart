import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mart/utils/cart_increment_decrement.dart';
import 'package:grocery_mart/models/product_model/product_model.dart';
import 'package:grocery_mart/view_model/cart_bloc/cart_bloc.dart';

class CartWidget extends StatelessWidget {
  final ProductModel product;

  const CartWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.imageUrl ?? 'assets/placeholder.png'),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title ?? 'Unknown', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(product.description ?? 'No description', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(height: 12),
                CartIncrementDecrement(product: product),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  context.read<CartBloc>().add(RemoveFromCart(product.id));
                },
              ),
              const SizedBox(height: 20),
              Text('\$${product.price.toString() ?? '0.0'}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}