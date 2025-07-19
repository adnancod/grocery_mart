import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_mart/utils/app_colors.dart';

class MySigninButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final Color color;
  final String asset;
  const MySigninButton({super.key, required this.text, required this.onPress, this.color= AppColors.primaryColor, required this.asset});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 353,
        height: 67,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(asset),
              SizedBox(width: 30,),
              Text(text,
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                    fontSize: 16),)
            ],
          ),
        ),
      ),
    );
  }
}
