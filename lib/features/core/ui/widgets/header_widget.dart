import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget(
      {super.key,
      required this.appKey,
      required this.title,
      required this.content});

  final Key appKey;
  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: appKey,
      height: appKey == AppKeys.contactKey
          ? size.height * 0.82
          : size.height * 0.92, // - height of the navbar
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: '.',
                  style: AppTextStyles.headingStyle(),
                  children: [
                    TextSpan(
                      text: title,
                      style: AppTextStyles.headingStyle().copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ],
                ),
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
          content,
        ],
      ),
    );
  }
}
