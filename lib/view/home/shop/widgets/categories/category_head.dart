import 'package:flutter/material.dart';

class CategoryHead extends StatelessWidget {
  final String title;
  const CategoryHead({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
            color: Color(0xFF181725),
            fontSize: 24
        ),),
        Text('See all', style: TextStyle(
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
            color: Color(0xFF53B175),
            fontSize: 16
        ),),
      ],
    );
  }
}
