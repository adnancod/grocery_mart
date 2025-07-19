import 'package:flutter/material.dart';
import 'package:grocery_mart/view/home/shop/widgets/categories/grocery_container.dart';

import '../../../../models/product_model/product_model.dart';
import 'categories/category_head.dart';
import 'categories/category_listview.dart';

class Groceries extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  const Groceries({super.key, required this.title, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          CategoryHead(title: title),
          SizedBox(height: 15,),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GroceryContainer(
                  color: Color(0xFFF8A44C),
                  imagePath: 'assets/home/shop/pulses.png',
                  title: 'Pulses',),
                SizedBox(width: 15,),
                GroceryContainer(
                  color: Color(0xFF53B175),
                  imagePath: 'assets/home/shop/rice.png',
                  title: 'Rice',),
              ],
            ),
          ),
          SizedBox(height: 15,),
          CategoryListview(products: products)
        ],
      ),
    );
  }
}
