import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/sections/navbar/widgets/navbar_hover_button.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_functions.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          width: size.width * .5,
          height: size.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(.2)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          text: 'Trznadel',
                          style: AppTextStyles.navBarTextStyle())
                    ],
                  ),
                ),
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
          ),
        ),
        const Spacer(),
        Container(
          height: size.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(.2)),
            ],
          ),
          child: TextButton(
            onPressed: () async => openUrl(
                'https://drive.google.com/file/d/1ajwnUjPs2TSgUifQFwVzop5z8P_CReI9/view'),
            style: TextButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: RichText(
                text: TextSpan(
                  text: 'Get my ',
                  style: AppTextStyles.navBarTextStyle().copyWith(
                    color: AppColors.whiteColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'CV',
                      style: AppTextStyles.navBarTextStyle().copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
