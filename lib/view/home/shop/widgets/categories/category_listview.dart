import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mart/view/home/shop/widgets/product_card.dart';
import 'package:grocery_mart/view_model/cart_bloc/cart_bloc.dart';
import '../../../../../models/product_model/product_model.dart';
import '../../../../../view_model/home_bloc/home_bloc.dart';

class CategoryListview extends StatelessWidget {
  final List<ProductModel> products;
  const CategoryListview({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index){
                return ProductCard(
                    product: products[index],
                    onAddToCart: (){
                      context.read<CartBloc>().add(AddToCart(products[index]));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added to cart!')),
                      );
                    });
              }),
        );
      }
    );
  }
}
