import 'package:flutter/material.dart';
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
                TextSpan(text: 'Trznadel', style: AppTextStyles.navBarTextStyle())
              ])),
          const Spacer(),
          Text(
            'home',
            style: AppTextStyles.navBarTextStyle(),
          ),
          const SizedBox(
            width: 50,
          ),
          Text('about me', style: AppTextStyles.navBarTextStyle()),
          const SizedBox(
            width: 50,
          ),
          Text('projects', style: AppTextStyles.navBarTextStyle()),
          const SizedBox(
            width: 50,
          ),
          Text('contact', style: AppTextStyles.navBarTextStyle()),
        ],
      ),
    );
  }
}
