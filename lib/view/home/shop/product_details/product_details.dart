import 'package:flutter/material.dart';
import 'package:grocery_mart/models/product_model/product_model.dart';
import 'package:grocery_mart/view/home/shop/product_details/widgets/image_container.dart';
import 'package:grocery_mart/view/home/shop/product_details/widgets/product_body.dart';
import 'package:grocery_mart/view/home/shop/product_details/widgets/product_main.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageContainer(product: product,),
            SizedBox(height: 20,),
            ProductMain(productModel: product,),
            SizedBox(height: 20,),
            ProductBody(productModel: product,)
          ],
        ),
      ),
    );
  }
}
