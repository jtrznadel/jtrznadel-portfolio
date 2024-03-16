import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/navbar/widgets/navbar_hover_button.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          RichText(
              text: TextSpan(
                  text: 'j',
                  style: AppTextStyles.navBarTextStyle().copyWith(
                    color: AppColors.primaryColor,
                  ),
                  children: [
                TextSpan(
                    text: 'Trznadel', style: AppTextStyles.navBarTextStyle())
              ])),
          const Spacer(),
          NavbarHoverButton(
            text: "home",
            navKey: AppKeys.homeKey.currentContext!,
          ),
          const SizedBox(
            width: 50,
          ),
          NavbarHoverButton(
            text: "about",
            navKey: AppKeys.aboutMeKey.currentContext!,
          ),
          const SizedBox(
            width: 50,
          ),
          NavbarHoverButton(
            text: "technologies",
            navKey: AppKeys.technologiesKey.currentContext!,
          ),
          const SizedBox(
            width: 50,
          ),
          NavbarHoverButton(
            text: "projects",
            navKey: AppKeys.projectKey.currentContext!,
          ),
          const SizedBox(
            width: 50,
          ),
          NavbarHoverButton(
            text: "contact",
            navKey: AppKeys.contactKey.currentContext!,
          ),
        ],
      ),
    );
  }
}
