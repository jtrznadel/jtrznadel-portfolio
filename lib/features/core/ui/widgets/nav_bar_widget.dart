import 'package:flutter/material.dart';
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
                  text: 'jakub',
                  style: AppTextStyles.navBarTextStyle()
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: 'Trznadel', style: AppTextStyles.navBarTextStyle())
              ])),
          const Spacer(),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                AppKeys.homeKey.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'home',
              style: AppTextStyles.navBarTextStyle(),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  AppKeys.aboutMeKey.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text('about me', style: AppTextStyles.navBarTextStyle())),
          const SizedBox(
            width: 50,
          ),
          TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  AppKeys.technologiesKey.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child:
                  Text('technologies', style: AppTextStyles.navBarTextStyle())),
          const SizedBox(
            width: 50,
          ),
          TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  AppKeys.projectKey.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text('projects', style: AppTextStyles.navBarTextStyle())),
          const SizedBox(
            width: 50,
          ),
          TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  AppKeys.contactKey.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text('contact', style: AppTextStyles.navBarTextStyle())),
        ],
      ),
    );
  }
}
