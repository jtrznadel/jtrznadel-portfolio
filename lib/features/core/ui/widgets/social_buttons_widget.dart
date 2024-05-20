import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jtrznadel_portfolio/utils/app_functions.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({
    super.key,
    required this.iconSize,
    required this.iconSpacer,
    required this.hoverColor,
    required this.color,
  });

  final double iconSize;
  final double iconSpacer;
  final Color hoverColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => openUrl('https://github.com/jtrznadel'),
            icon: const FaIcon(FontAwesomeIcons.github),
            iconSize: iconSize,
            color: color,
            hoverColor: hoverColor,
          ),
          SizedBox(
            width: iconSpacer,
          ),
          IconButton(
            onPressed: () =>
                openUrl('https://www.linkedin.com/in/jakub-trznadel7/'),
            icon: const FaIcon(FontAwesomeIcons.linkedin),
            iconSize: iconSize,
            color: color,
            hoverColor: hoverColor,
          ),
          SizedBox(
            width: iconSpacer,
          ),
          IconButton(
            onPressed: () => openUrl('https://www.instagram.com/bleiddze/'),
            icon: const FaIcon(FontAwesomeIcons.instagram),
            iconSize: iconSize,
            color: color,
            hoverColor: hoverColor,
          ),
        ],
      ),
    );
  }
}
