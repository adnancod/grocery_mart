import 'package:flutter/material.dart';
import 'package:grocery_mart/models/product_model/product_model.dart';
import 'package:grocery_mart/utils/cart_increment_decrement.dart';

class ProductMain extends StatelessWidget {
  final ProductModel productModel;
  const ProductMain({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productModel.title, style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF181725),
                      fontSize: 24
                  ),),
                  Text(productModel.description, style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF7C7C7C),
                      fontSize: 16
                  ),),
                ],
              ),
              IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.favorite_border))
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CartIncrementDecrement(product: productModel,),
              Text('\$${productModel.price.toString()}', style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725),
                  fontSize: 24
              ),),

            ],
          )
        ],
      ),
    );
  }
}
