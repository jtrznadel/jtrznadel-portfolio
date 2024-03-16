import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/projects/widgets/project_card.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/header_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
        title: '.budgetBuddy',
        description:
            'SocialEase stands as a engineering project, crafted to inspire and mobilize communities. Its mission is to encourage involvement in pro-social activities, empowering individuals to play an active role in shaping and enhancing their community.',
        technologies: [],
        link: 'https://github.com/jtrznadel/socialease-app',
      ),
    ];

    final PageController controller = PageController();
    final size = MediaQuery.of(context).size;
    return HeaderWidget(
      appKey: AppKeys.projectKey,
      title: 'projects',
      content: Column(
        children: [
          SizedBox(
            width: size.width * .8,
            height: size.height * .8,
            child: PageView.builder(
              itemCount: pages.length,
              controller: controller,
              itemBuilder: (_, index) {
                return pages[index];
              },
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const ExpandingDotsEffect(),
          ),
        ],
      ),
    );
  }
}
