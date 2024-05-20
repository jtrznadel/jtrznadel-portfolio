import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';

class AppTextStyles {
  static TextStyle navBarTextStyle() {
    return GoogleFonts.sourceSansPro(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryTextColor,
        letterSpacing: 1);
  }

  static TextStyle footerTextStyle() {
    return GoogleFonts.sourceSansPro(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.palmTextColor,
        letterSpacing: 1);
  }

  static TextStyle primaryStyle() {
    return GoogleFonts.sourceSansPro(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryTextColor,
    );
  }

  static TextStyle subheadingStyle() {
    return GoogleFonts.sourceSansPro(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor,
    );
  }

  static TextStyle headingStyle() {
    return GoogleFonts.sourceSansPro(
        fontSize: 64,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor);
  }

  static TextStyle headingWhiteStyle() {
    return GoogleFonts.sourceSansPro(
      fontSize: 64,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor,
    );
  }
}
