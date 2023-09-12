import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:jtrznadel_portfolio/utils/app_texts.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: AppKeys.aboutMeKey,
      height: size.height * 0.9, // - height of the navbar
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'ABOUT ME',
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
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    AppTexts.aboutMeText,
                    style: AppTextStyles.primaryStyle(),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8),
                child: Stack(clipBehavior: Clip.none, children: [
                  Positioned(
                      child: Container(
                    width: size.width * 0.2,
                    height: size.width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor, width: 2),
                        color: AppColors.bgColor),
                  )),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: SizedBox(
                      width: size.width * 0.2,
                      height: size.width * 0.3,
                      child: Image.asset('assets/images/portfolio_image.png',
                          fit: BoxFit.cover, alignment: const Alignment(1.0, 0.5)),
                    ),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
