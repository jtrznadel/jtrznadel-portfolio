import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/social_buttons_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:jtrznadel_portfolio/utils/app_widget_theme.dart';
import 'package:lottie/lottie.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

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
                  style: AppTextStyles.primaryStyle(),
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
                // SizedBox(
                //   width: size.width * 0.4,
                //   child: Text(
                //     'and i\'m a final year computer science student. i have done a number of projects which can be found below. currently looking for my first experience and a place to intern.',
                //     style: AppTextStyles.primaryStyle(),
                //   ),
                // ),

                SocialButtonsWidget(
                  iconSize: 36,
                  iconSpacer: 15,
                  hoverColor: AppColors.primaryColor,
                  color: AppColors.primaryTextColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () => downloadFile(
                      'assets/pdf/JakubTrznadel_FlutterDeveloper_CV.pdf'),
                  style: AppWidgetTheme.customOutlinedButtonStyle,
                  child: RichText(
                    text: TextSpan(
                      text: 'Get my ',
                      style: AppTextStyles.primaryStyle(),
                      children: [
                        TextSpan(
                          text: 'CV',
                          style: AppTextStyles.primaryStyle().copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
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
