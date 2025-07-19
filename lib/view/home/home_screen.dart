import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mart/view/home/account/account_home.dart';
import 'package:grocery_mart/view/home/cart/cart_home.dart';
import 'package:grocery_mart/view/home/explore/explore_home.dart';
import 'package:grocery_mart/view/home/favourite/favourite_home.dart';
import 'package:grocery_mart/view/home/shop/shop_home.dart';
import 'package:grocery_mart/view_model/home_bloc/home_bloc.dart';

import 'bottom_nav/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> pages =[
    ShopHome(),
    ExploreHome(),
    CartHome(),
    FavouriteHome(),
    AccountHome()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state){
        return pages[state.selectedIndex];
      }),
      bottomNavigationBar: BottomNav(),
    );
  }
}
