import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_functions.dart';
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
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 5,
                color: Colors.black.withOpacity(.2)),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.headingStyle().copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                    Text(
                      'Summary',
                      style: AppTextStyles.primaryStyle().copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: AppTextStyles.primaryStyle().copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            openUrl(
                                'https://github.com/jtrznadel/socialease-app');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Check Repo',
                                  style: AppTextStyles.primaryStyle(),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const FaIcon(
                                  FontAwesomeIcons.github,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
