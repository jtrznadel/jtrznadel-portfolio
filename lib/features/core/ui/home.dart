import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/aboutme_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/contact_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/home_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/project_section.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/footer_widget.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/nav_bar_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';

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
          if (_scrollController.offset >= 400) {
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
          toolbarHeight: size.height * 0.1,
          title: const NavBar(),
          backgroundColor: AppColors.bgColor,
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: const Column(
              children: [
                HomeSection(),
                AboutMeSection(),
                ProjectSection(),
                ContactSection(),
                FooterWidget(),
              ],
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
