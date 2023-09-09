import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: AppKeys.aboutMeKey,
      height: size.height * 0.9, // - height of the navbar
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'About Me',
                  style: AppTextStyles.headingStyle(),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: Divider(
                    color: AppColors.primaryColor,
                  ),
                )
              ],
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
