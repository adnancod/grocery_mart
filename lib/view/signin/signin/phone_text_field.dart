import 'package:flutter/material.dart';

class PhoneTextField extends StatelessWidget {
  final VoidCallback onPress;
  const PhoneTextField({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey, // Set your color
              width: 0.5,         // Set your desired width
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/signin/flag.png', width: 33,),
            const SizedBox(width: 8),
            Expanded(
              child: const Text(
                '+880',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    )
    ;
  }
}
