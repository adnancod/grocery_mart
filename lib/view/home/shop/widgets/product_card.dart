import 'package:flutter/material.dart';
import 'package:grocery_mart/config/routes/routes_name.dart';
import 'package:grocery_mart/utils/add_to_cart_button.dart';

import '../../../../models/product_model/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onAddToCart;
  const ProductCard({super.key, required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, RoutesName.productDetails, arguments: product);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(product.imageUrl, height: 100, width: 100),
              const SizedBox(height: 10),
              Text(product.title, style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF181725),
                  fontSize: 16
              ),),
              const SizedBox(height: 5),
              Text(product.description, style: TextStyle(
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
                color: Color(0xFF7C7C7C),
                fontSize: 14
              ),),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${product.price.toString()}', style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF181725),
                      fontSize: 18
                  ),),
                  SizedBox(width: 30,),
                  AddToCartButton(onPress: onAddToCart)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
