import 'package:flutter/material.dart';
import 'dart:async';

import 'package:grocery_mart/config/routes/routes_name.dart';

class SplashServices{

  static void Initialize(BuildContext context){
    Timer(Duration(seconds: 3), () => Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.onboardingScreen, (route) => false));
  }
}