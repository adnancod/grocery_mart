import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Color color;
  final VoidCallback onPressed;
  const RoundButton({super.key,
    required this.title,
    required this.onPressed,
    this.height=50,
    this.width= double.infinity,
    this.color= Colors.blueAccent});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
