import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:jtrznadel_portfolio/utils/app_widget_theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: AppKeys.contactKey,
      height: size.height * 0.9, // - height of the navbar
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'CONTACT',
                  style: AppTextStyles.headingStyle(),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: Divider(
                    thickness: 2,
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            ),
            Text(
              'ask for a question, hire me? Feel free to leave a message'
                  .toUpperCase(),
              style: AppTextStyles.primaryStyle(),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: AppWidgetTheme.customOutlinedButtonStyle,
                  child: Text(
                    'Contact by mail',
                    style: AppTextStyles.primaryStyle(),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Row(children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      ' OR ',
                      style: AppTextStyles.primaryStyle(),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
