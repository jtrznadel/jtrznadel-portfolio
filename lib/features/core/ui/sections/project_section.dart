import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: AppKeys.projectKey,
      height: size.height * 0.9,
      width: double.infinity, // - height of the navbar
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.5,
              child: Row(
                children: [
                  Text(
                    'PROJECTS',
                    style: AppTextStyles.headingStyle(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
                'I\'m Jakub Trznadel -  final year computer science student based in Rzeszow.',
                style: AppTextStyles.primaryStyle()),
          ],
        ),
      ),
    );
  }
}
