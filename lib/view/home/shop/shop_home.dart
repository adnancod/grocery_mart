import 'package:flutter/material.dart';
import 'package:grocery_mart/view/home/shop/consts/products_list.dart';
import 'package:grocery_mart/view/home/shop/widgets/carosel_container.dart';
import 'package:grocery_mart/view/home/shop/widgets/category_section.dart';
import 'package:grocery_mart/view/home/shop/widgets/groceries.dart';
import 'package:grocery_mart/view/home/shop/widgets/search_box.dart';

import '../../../models/product_model/product_model.dart';

class ShopHome extends StatelessWidget {
  const ShopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Image.asset('assets/home/shop/home_logo.png', height: 40,),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Image.asset('assets/home/shop/home_logo.png', height: 40,),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  Text('Dhaka, Banassre', style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4C4F4D),
                      fontSize: 18
                  ),)
                ],
              ),
              SizedBox(height: 20,),
              SearchBox(),
              SizedBox(height: 20,),
              CaroselContainer(),
              SizedBox(height: 20,),
              CategorySection(
                  title: 'Exclusive Offer',
                  products: ProductsList.exclusiveOffers,
              ),
              SizedBox(height: 20,),
              CategorySection(
                  title: 'Best Selling',
                  products: ProductsList.bestSelling,
              ),
              SizedBox(height: 20,),
              Groceries(title: 'Groceries', products: ProductsList.groceries)
              // CategorySection(
              //     title: 'Groceries',
              //     products: ProductsList.groceries
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
