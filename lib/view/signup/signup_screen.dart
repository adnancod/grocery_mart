import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_mart/utils/my_button.dart';

import '../../config/routes/routes_name.dart';
import '../../utils/app_colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.09,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
                      child: Image.asset('assets/login/bg.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    child: Image.asset('assets/login/login.png'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign Up', style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF181725),
                      fontSize: 26
                  ),),
                  SizedBox(height: 10,),
                  Text('Enter your credentials to continue',
                    style: TextStyle(
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7C7C7C),
                        fontSize: 16
                    ),),
                  SizedBox(height: 40,),
                  Text('Username', style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7C7C),
                      fontSize: 16
                  ),),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Email', style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7C7C),
                      fontSize: 16
                  ),),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Password', style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7C7C),
                      fontSize: 16
                  ),),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text('By continuing you agree to our Terms of Service and Privacy Policy.', style: TextStyle(
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF181725),
                        fontSize: 14
                    ),),
                  ),
                  SizedBox(height: 30,),
                  MyButton(text: 'Sign Up', onPress: (){
                    Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route)=> false);
                  }),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () => Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route)=> false),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ", style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14
                        ),),
                        Text('Login', style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                            fontSize: 14
                        ),),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
