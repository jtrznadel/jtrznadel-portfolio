import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:jtrznadel_portfolio/utils/app_widget_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  downloadFile(url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = "Trznadel_Jakub_CV";
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: AppKeys.homeKey,
      height: size.height * 0.9, // - navbar height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'hi, my name is',
            style: AppTextStyles.primaryStyle(),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Jakub.',
            style: AppTextStyles.headingStyle(),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'i\'m a ',
                style: AppTextStyles.headingWhiteStyle(),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Student',
                    textStyle: AppTextStyles.headingStyle(),
                  ),
                  TyperAnimatedText(
                    'Flutter Developer',
                    textStyle: AppTextStyles.headingStyle(),
                  ),
                  TyperAnimatedText(
                    'Passionate Coder',
                    textStyle: AppTextStyles.headingStyle(),
                  ),
                ],
                repeatForever: true,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width * 0.45,
            child: Text(
              'and i\'m a final year computer science student. i have done a number of projects which can be found below. currently looking for my first experience and a place to intern.',
              style: AppTextStyles.primaryStyle(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => _launchUrl('https://github.com/jtrznadel'),
                icon: const FaIcon(FontAwesomeIcons.github),
                iconSize: 36,
                color: Colors.white,
                hoverColor: AppColors.primaryColor,
              ),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                onPressed: () =>
                    _launchUrl('https://www.linkedin.com/in/jakub-trznadel7/'),
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                iconSize: 36,
                color: Colors.white,
                hoverColor: AppColors.primaryColor,
              ),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                onPressed: () =>
                    _launchUrl('https://www.instagram.com/bleiddze/'),
                icon: const FaIcon(FontAwesomeIcons.instagram),
                iconSize: 36,
                color: Colors.white,
                hoverColor: AppColors.primaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () => downloadFile('assets/pdf/cv.pdf'),
              style: AppWidgetTheme.customOutlinedButtonStyle,
              child: RichText(
                text: TextSpan(
                    text: 'Get my ',
                    style: AppTextStyles.primaryStyle(),
                    children: [
                      TextSpan(
                          text: 'CV',
                          style: AppTextStyles.primaryStyle()
                              .copyWith(color: AppColors.primaryColor))
                    ]),
              ))
        ],
      ),
    );
  }
}
