import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/header_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:jtrznadel_portfolio/utils/app_widget_theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return HeaderWidget(
      appKey: AppKeys.contactKey,
      title: "contact",
      content: SizedBox(
        width: size.width * 0.40,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    style: AppTextStyles.primaryStyle(),
                    decoration: AppWidgetTheme.inputFormFieldDecorationTheme
                        .copyWith(labelText: '  Name  ')),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    style: AppTextStyles.primaryStyle(),
                    decoration: AppWidgetTheme.inputFormFieldDecorationTheme
                        .copyWith(labelText: '  Email  ')),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    style: AppTextStyles.primaryStyle(),
                    decoration: AppWidgetTheme.inputFormFieldDecorationTheme
                        .copyWith(labelText: '  Subject  ')),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    style: AppTextStyles.primaryStyle(),
                    maxLines: 3,
                    decoration: AppWidgetTheme.inputFormFieldDecorationTheme
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
    );
  }
}
