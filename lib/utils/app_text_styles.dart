import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';

class AppTextStyles {
  static TextStyle navBarTextStyle() {
    return GoogleFonts.montserrat(
        fontSize: 24, fontWeight: FontWeight.w200, color: Colors.white, letterSpacing: 1);
  }

  static TextStyle primaryStyle() {
    return GoogleFonts.montserrat(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    );
  }

  static TextStyle headingStyle() {
    return GoogleFonts.montserrat(
        fontSize: 48, fontWeight: FontWeight.bold, color: AppColors.primaryColor);
  }

  static TextStyle headingWhiteStyle() {
    return GoogleFonts.montserrat(
        fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white);
  }
}
