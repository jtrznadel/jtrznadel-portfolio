import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/projects/widgets/project_card.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/header_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  int index = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    controller.addListener(() {
      setState(() {
        index = controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const ProjectCard(
        color: Color.fromARGB(255, 125, 197, 255),
        image: 'assets/images/socialease_intro.png',
        title: 'socialEase',
        description:
            'SocialEase stands as a engineering project, crafted to inspire and mobilize communities. Its mission is to encourage involvement in pro-social activities, empowering individuals to play an active role in shaping and enhancing their community.',
        technologies: [],
        link: 'https://github.com/jtrznadel/socialease-app',
      ),
      const ProjectCard(
        color: Color.fromARGB(255, 198, 143, 229),
        image: 'assets/images/budgetbuddy_intro.png',
        title: 'budgetBuddy',
        description:
            'budgetBuddy is an engineering project designed to assist individuals in managing their finances efficiently. It aims to provide tools and insights to help users make informed financial decisions and achieve their budgetary goals.',
        technologies: [],
        link: 'https://github.com/jtrznadel/budgetbuddy-app',
      ),
      const ProjectCard(
        color: Color.fromARGB(255, 198, 143, 229),
        image: 'assets/images/budgetbuddy_intro.png',
        title: 'budgetBuddy',
        description:
            'budgetBuddy is an engineering project designed to assist individuals in managing their finances efficiently. It aims to provide tools and insights to help users make informed financial decisions and achieve their budgetary goals.',
        technologies: [],
        link: 'https://github.com/jtrznadel/budgetbuddy-app',
      ),
      const ProjectCard(
        color: Color.fromARGB(255, 198, 143, 229),
        image: 'assets/images/budgetbuddy_intro.png',
        title: 'budgetBuddy',
        description:
            'budgetBuddy is an engineering project designed to assist individuals in managing their finances efficiently. It aims to provide tools and insights to help users make informed financial decisions and achieve their budgetary goals.',
        technologies: [],
        link: 'https://github.com/jtrznadel/budgetbuddy-app',
      ),
      const ProjectCard(
        color: Color.fromARGB(255, 198, 143, 229),
        image: 'assets/images/budgetbuddy_intro.png',
        title: 'budgetBuddy',
        description:
            'budgetBuddy is an engineering project designed to assist individuals in managing their finances efficiently. It aims to provide tools and insights to help users make informed financial decisions and achieve their budgetary goals.',
        technologies: [],
        link: 'https://github.com/jtrznadel/budgetbuddy-app',
      ),
    ];

    final size = MediaQuery.of(context).size;

    void onAddButtonTapped(int newIndex) {
      if (newIndex >= 0 && newIndex < pages.length) {
        controller.animateToPage(newIndex,
            duration: const Duration(seconds: 1), curve: Curves.easeInOut);
      }
    }

    return HeaderWidget(
      appKey: AppKeys.projectKey,
      title: 'projects',
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (index != 0)
                FloatingActionButton(
                  backgroundColor: AppColors.primaryColor,
                  onPressed: () {
                    onAddButtonTapped(index - 1);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.bgColor,
                  ),
                ),
              SizedBox(
                width: size.width * .6,
                height: size.height * .8,
                child: PageView.builder(
                  itemCount: pages.length,
                  controller: controller,
                  itemBuilder: (_, initialIndex) {
                    return pages[initialIndex];
                  },
                ),
              ),
              if (index != pages.length - 1)
                FloatingActionButton(
                  backgroundColor: AppColors.primaryColor,
                  onPressed: () {
                    onAddButtonTapped(index + 1);
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: AppColors.bgColor,
                  ),
                ),
            ],
          ),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
