import 'package:flutter/material.dart';
import 'package:grocery_mart/utils/app_colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final Color color;
  const MyButton({super.key, required this.text, required this.onPress, this.color= const Color(0xFFFFFFFF)});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 353,
        height: 67,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(text,
          style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
              color: color,
              fontSize: 16),)),
      ),
    );
  }
}
