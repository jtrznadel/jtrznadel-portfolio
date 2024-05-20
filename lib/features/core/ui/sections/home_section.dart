import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/social_buttons_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:jtrznadel_portfolio/utils/app_widget_theme.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: AppKeys.homeKey,
      height: size.height * 0.92, // - navbar height,
      child: Row(
        children: [
          SizedBox(
            width: size.width * .4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'hi, my name is',
                  style: AppTextStyles.subheadingStyle(),
                ),
                Text(
                  'Jakub.',
                  style: AppTextStyles.headingStyle(),
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
                          'Mobile Developer',
                          textStyle: AppTextStyles.headingStyle(),
                        ),
                        TyperAnimatedText(
                          'Passionate Coder',
                          textStyle: AppTextStyles.headingStyle(),
                        ),
                        TyperAnimatedText(
                          'IT Student',
                          textStyle: AppTextStyles.headingStyle(),
                        ),
                      ],
                      repeatForever: true,
                    )
                  ],
                ),
                // SizedBox(
                //   width: size.width * 0.4,
                //   child: Text(
                //     'and i\'m a final year computer science student. i have done a number of projects which can be found below. currently looking for my first experience and a place to intern.',
                //     style: AppTextStyles.primaryStyle(),
                //   ),
                // ),

                Row(
                  children: [
                    SocialButtonsWidget(
                      iconSize: 36,
                      iconSpacer: 15,
                      hoverColor: AppColors.primaryColor,
                      color: AppColors.primaryTextColor,
                    ),
                    // const SizedBox(
                    //   width: 50,
                    // ),
                    // ElevatedButton(
                    //   onPressed: () async => openUrl(
                    //       'https://drive.google.com/file/d/1ajwnUjPs2TSgUifQFwVzop5z8P_CReI9/view'),
                    //   style: ElevatedButton.styleFrom(
                    //     shape: const StadiumBorder(),
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 30,
                    //       vertical: 15,
                    //     ),
                    //     backgroundColor: AppColors.whiteColor,
                    //     elevation: 5,
                    //   ),
                    //   child: RichText(
                    //     text: TextSpan(
                    //       text: 'Get my ',
                    //       style: AppTextStyles.subheadingStyle(),
                    //       children: [
                    //         TextSpan(
                    //           text: 'CV',
                    //           style: AppTextStyles.subheadingStyle().copyWith(
                    //             color: AppColors.primaryColor,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          Lottie.asset('assets/lotties/home_astronaut.json',
              height: size.height * 0.8),
        ],
      ),
    );
  }
}
