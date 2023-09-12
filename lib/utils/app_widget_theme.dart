import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';

class AppWidgetTheme {
  static final ButtonStyle customOutlinedButtonStyle = OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(5), // Ustaw na 0, aby usunąć zaokrąglone narożniki
      ),
      side: BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
      foregroundColor: AppColors.primaryColor,
      padding: const EdgeInsets.all(20));

  static InputDecoration inputDecorationTheme = InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryColor)),
      prefixIconColor: AppColors.primaryColor,
      floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
      labelStyle: TextStyle(color: AppColors.primaryColor),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(5)));
}
