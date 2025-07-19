import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mart/utils/app_colors.dart';
import 'package:grocery_mart/view_model/home_bloc/home_bloc.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final selectedIndex = state.selectedIndex; // Use state directly
        return ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              context.read<HomeBloc>().add(NavigationIndexChange(index)); // Fixed event name
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey, // Added for unselected items
            items: [
              BottomNavigationBarItem(
                icon: navBarIcon(context, 'assets/home/nav_bar/shop.png', 0, selectedIndex),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: navBarIcon(context, 'assets/home/nav_bar/explore.png', 1, selectedIndex),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: navBarIcon(context, 'assets/home/nav_bar/cart.png', 2, selectedIndex),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: navBarIcon(context, 'assets/home/nav_bar/favourite.png', 3, selectedIndex),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: navBarIcon(context, 'assets/home/nav_bar/account.png', 4, selectedIndex),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget navBarIcon(BuildContext context, String assetPath, int itemIndex, int selectedIndex) {
    return SizedBox(
      width: 24, // Consistent size for icons
      height: 24,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          selectedIndex == itemIndex ? AppColors.primaryColor : Colors.grey,
          BlendMode.srcIn,
        ),
        child: Image.asset(assetPath),
      ),
    );
  }
}