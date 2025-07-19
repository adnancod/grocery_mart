import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_mart/config/routes/routes_name.dart';
import 'package:grocery_mart/utils/my_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/onboarding/onboarding.jpg',
          alignment: Alignment(0.2, 0),
          fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/onboarding/icon.svg'),
                SizedBox(height: 20,),
                Text('Welcome\nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                      fontSize: 48,
                      height: 1.18,),),
                Text('Get your groceries in as fast as one hour',
                  style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFCFCFC),
                      fontSize: 16),
                ),
                SizedBox(height: 35,),
                MyButton(text: 'Get Started', onPress: () { 
                  Navigator.pushNamedAndRemoveUntil(context, RoutesName.signinScreen, (route)=> false);
                },)
              ],
            ),
          )
        ],
      ),
    );
  }
}
