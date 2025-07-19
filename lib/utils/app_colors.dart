import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  static const Color primaryColor = Color(0xFF53B175); // Green (for grocery theme)
  static const Color secondaryColor = Color(0xFFFF9800); // Orange
  static const Color accentColor = Color(0xFFCDDC39); // Lime

  static const Color backgroundColor = Color(0xFFF5F5F5); // Light grey
  static const Color surfaceColor = Colors.white;

  static const Color textPrimary = Color(0xFF212121); // Dark grey
  static const Color textSecondary = Color(0xFF757575); // Medium grey

  static const Color errorColor = Color(0xFFF44336); // Red

  // For buttons or status
  static const Color success = Color(0xFF4CAF50); // Same as primary
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF2196F3);
}
