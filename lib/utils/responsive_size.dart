import 'package:flutter/material.dart';

class AppSizeBox {
  // Widths
  static SizedBox width(double width) => SizedBox(width: width);
  static SizedBox w1(BuildContext context) => width(screenWidth(context) * 0.3);
  static SizedBox w4(BuildContext context) => width(screenWidth(context) * 0.01);
  static SizedBox w8(BuildContext context) => width(screenWidth(context) * 0.02);
  static SizedBox w16(BuildContext context) => width(screenWidth(context) * 0.04);
  static SizedBox w32(BuildContext context) => width(screenWidth(context) * 0.08);

  // Heights
  static SizedBox height(double height) => SizedBox(height: height);
  static SizedBox h4(BuildContext context) => height(screenHeight(context) * 0.005);
  static SizedBox h8(BuildContext context) => height(screenHeight(context) * 0.01);
  static SizedBox h16(BuildContext context) => height(screenHeight(context) * 0.02);
  static SizedBox h32(BuildContext context) => height(screenHeight(context) * 0.06);

  // Screen size helpers
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
