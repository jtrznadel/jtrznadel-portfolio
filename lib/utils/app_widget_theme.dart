import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';

class AppWidgetTheme {
  static final ButtonStyle customOutlinedButtonStyle = OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            0), // Ustaw na 0, aby usunąć zaokrąglone narożniki
      ),
      side: BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
      foregroundColor: AppColors.primaryColor,
      padding: const EdgeInsets.all(20));
}
