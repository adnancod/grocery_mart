import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_mart/config/routes/routes_name.dart';

import '../../utils/app_colors.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: FloatingActionButton(
            backgroundColor: AppColors.primaryColor,
            child: Icon(Icons.navigate_next_sharp, color: Colors.white,),
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route)=> false);
            }),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height*0.3,
                child: Positioned.fill(
                  child: Opacity(
                    opacity: 0.09,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
                      child: Image.asset('assets/login/bg.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.arrow_back_ios)),
                      SizedBox(height: 40),
                      Text(
                        'Enter your 4-digit code',
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF181725),
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Code",
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF7C7C7C),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextField(
                        decoration: InputDecoration(
                            hintText: '- - - -'
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Text('Resend Code', style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                        fontSize: 18
                    ),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
