import 'package:flutter/material.dart';
import 'package:grocery_mart/config/routes/routes_name.dart';
import 'package:grocery_mart/view/login/login_screen.dart';
import 'package:grocery_mart/view/onboarding/onboarding_screen.dart';
import 'package:grocery_mart/view/signin/number_screen.dart';
import 'package:grocery_mart/view/signin/signin/signin_screen.dart';
import 'package:grocery_mart/view/signin/verification_screen.dart';
import 'package:grocery_mart/view/signup/signup_screen.dart';
import '../../models/product_model/product_model.dart';
import '../../view/home/home_screen.dart';
import '../../view/home/shop/product_details/product_details.dart';
import '../../view/splash/splash_screen.dart';

class Routes{

  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context)=> SplashScreen());
      case RoutesName.onboardingScreen:
        return MaterialPageRoute(builder: (context)=> OnboardingScreen());
      case RoutesName.signinScreen:
        return MaterialPageRoute(builder: (context)=> SigninScreen());
      case RoutesName.numberScreen:
        return MaterialPageRoute(builder: (context)=> NumberScreen());
      case RoutesName.verificationScreen:
        return MaterialPageRoute(builder: (context)=> VerificationScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context)=> LoginScreen());
      case RoutesName.signupScreen:
        return MaterialPageRoute(builder: (context)=> SignupScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context)=> HomeScreen());
      case RoutesName.productDetails:
        final product = settings.arguments as ProductModel;
        return MaterialPageRoute(builder: (context)=> ProductDetails(product: product,));
      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(
              child: Text('No Route Found'),
            ),
          );
        });
    }
  }
}