import 'package:flutter/material.dart';
import 'package:grocery_mart/view/home/shop/widgets/categories/category_listview.dart';
import '../../../../models/product_model/product_model.dart';
import 'categories/category_head.dart';

class CategorySection extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  const CategorySection({super.key, required this.title, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          CategoryHead(title: title),
          CategoryListview(products: products)
        ],
      ),
    );
}
}
