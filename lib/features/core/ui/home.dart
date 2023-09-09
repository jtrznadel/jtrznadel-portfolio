import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/aboutme_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/contact_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/home_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/project_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/nav_bar_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          toolbarHeight: size.height * 0.1,
          title: const NavBar(),
          backgroundColor: AppColors.bgColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: const Column(
              children: [
                HomeSection(),
                AboutMeSection(),
                ProjectSection(),
                ContactSection()
              ],
            ),
          ),
        ));
  }
}
