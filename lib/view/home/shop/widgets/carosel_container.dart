import 'package:flutter/material.dart';

class CaroselContainer extends StatelessWidget {
  const CaroselContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 114,
      decoration: BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          Image.asset('assets/home/shop/Mask Group.png'),
          Image.asset('assets/home/shop/fruits.png'),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text('Fresh Vegetables',style: TextStyle(
                    fontFamily: 'Aclonica',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF030303),
                    fontSize: 18
                ),)),
                Center(child: Text('Get Up To 40% OFF',style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF53B175),
                    fontSize: 14
                ),)),
              ],
            ),
          )

        ],
      ),
    );
  }
}
