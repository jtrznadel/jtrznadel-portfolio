import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/aboutme_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/contact_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/home_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/projects/project_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/technologies/technologies_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/footer_widget.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/navbar/navbar.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 500) {
            _showBackToTopButton = true;
          } else {
            _showBackToTopButton = false;
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          toolbarHeight: size.height * 0.08,
          title: const NavBar(),
          backgroundColor: AppColors.bgColor,
          scrolledUnderElevation: 0,
          shape: Border(
            bottom: BorderSide(
              color: AppColors.bgColor,
              width: 1,
            ),
          ),
        ),
        body: WebSmoothScroll(
          controller: _scrollController,
          scrollOffset: (size.height * 0.815).toInt(),
          animationDuration: 600,
          curve: Curves.easeInOutCirc,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: const Column(
                children: [
                  HomeSection(),
                  AboutMeSection(),
                  TechnologiesSection(),
                  ProjectsSection(),
                  ContactSection(),
                  FooterWidget(),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _showBackToTopButton == false
            ? null
            : FloatingActionButton(
                onPressed: _scrollToTop,
                backgroundColor: AppColors.primaryColor,
                child: const Icon(
                  Icons.arrow_upward,
                )));
  }
}
