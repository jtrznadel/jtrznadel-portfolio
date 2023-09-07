import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/heading_widget.dart';
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
          toolbarHeight: size.height * 0.08,
          title: const NavBar(),
          backgroundColor: AppColors.bgColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: size.height * 0.25, left: size.width * 0.15),
            child: const HeadingWidget(),
          ),
        ));
  }
}
