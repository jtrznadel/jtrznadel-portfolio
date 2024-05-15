import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.color,
    required this.image,
    required this.title,
    required this.description,
    required this.technologies,
    required this.link,
  });
  final Color color;
  final String image;
  final String title;
  final String description;
  final List<String> technologies;
  final String link;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        height: size.height * .5,
        width: size.width * .5,
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.headingStyle().copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: AppTextStyles.primaryStyle().copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
