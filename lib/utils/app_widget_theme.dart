import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

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

  static InputDecoration inputFormFieldDecorationTheme = InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryColor)),
      prefixIconColor: AppColors.primaryColor,
      floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
      labelStyle: AppTextStyles.primaryStyle(),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(5)));
}
