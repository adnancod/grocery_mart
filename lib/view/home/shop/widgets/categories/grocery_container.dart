import 'package:flutter/material.dart';

class GroceryContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color color;
  const GroceryContainer({super.key, required this.color, required this.imagePath, required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 105,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(imagePath),
            SizedBox(width: 20,),
            Text(title, style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                color: Color(0xFF3E423F),
                fontSize: 20
            ),)
          ],
        ),
      ),
    );
  }
}
