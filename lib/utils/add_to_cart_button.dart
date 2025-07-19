import 'package:flutter/material.dart';
import 'package:grocery_mart/utils/app_colors.dart';

class AddToCartButton extends StatelessWidget {
  final VoidCallback onPress;
  const AddToCartButton({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(Icons.add, color: Color(0xFFFFFFFF), size: 17,),

      ),
    );
  }
}
