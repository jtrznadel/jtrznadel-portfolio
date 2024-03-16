import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/social_buttons_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '© 2023 Built by Jakub Trznadel',
            style: AppTextStyles.primaryStyle(),
          ),
          const SocialButtonsWidget(
            iconSize: 24,
            iconSpacer: 5,
            hoverColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}
