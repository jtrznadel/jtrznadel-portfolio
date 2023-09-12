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
      height:
          size.height * 0.8, // - height of the navbar (0.1) - height of the footer (0.1)
      width: double.infinity,
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
                      'CONTACT',
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
                width: size.width * 0.5,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Have a question or a project in mind? Feel free to leave a message',
                    style: AppTextStyles.primaryStyle(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextField(
                            decoration: AppWidgetTheme.inputDecorationTheme
                                .copyWith(labelText: '  Name  ')),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                            decoration: AppWidgetTheme.inputDecorationTheme
                                .copyWith(labelText: '  Email  ')),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                            decoration: AppWidgetTheme.inputDecorationTheme
                                .copyWith(labelText: '  Subject  ')),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                            maxLines: 5,
                            decoration: AppWidgetTheme.inputDecorationTheme
                                .copyWith(labelText: '  Message  ')),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: OutlinedButton(
                        style: AppWidgetTheme.customOutlinedButtonStyle,
                        onPressed: () {},
                        child: Text(
                          'Send',
                          style: AppTextStyles.primaryStyle(),
                        )),
                  )
                ]),
              ),
            ],
          )),
    );
  }
}
