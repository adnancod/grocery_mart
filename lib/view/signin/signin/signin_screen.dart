import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_mart/config/routes/routes_name.dart';
import 'package:grocery_mart/utils/my_button.dart';
import 'package:grocery_mart/utils/my_signin_button.dart';
import 'package:grocery_mart/view/signin/signin/phone_text_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset('assets/signin/signin.jpg', height: 374,),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Get your groceries\nwith nectar',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF030303),
                  fontSize: 26,
                  height: 1.18,
                ),
              ),
              SizedBox(height: 20,),
              PhoneTextField(onPress: (){
                Navigator.pushNamed(context, RoutesName.numberScreen);
              },),
            ],
          ),
        ),
          Center(
            child: Text('Or connect with social media',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                color: Color(0xFF828282),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: MySigninButton(
              text: 'Continue with Google',
              asset: 'assets/signin/google_icon.svg',
              onPress: (){},
              color: Color(0xFF5383EC),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: MySigninButton(
              text: 'Continue with Facebook',
              asset: 'assets/signin/fb.svg',
              onPress: (){},
              color: Color(0xFF4A66AC),
            ),
          ),
      ],),
    );
  }
}
