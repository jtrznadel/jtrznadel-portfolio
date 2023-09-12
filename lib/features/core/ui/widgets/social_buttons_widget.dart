import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({
    super.key,
    required this.iconSize,
    required this.iconSpacer,
    required this.hoverColor,
  });

  final double iconSize;
  final double iconSpacer;
  final Color hoverColor;

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => _launchUrl('https://github.com/jtrznadel'),
            icon: const FaIcon(FontAwesomeIcons.github),
            iconSize: iconSize,
            color: Colors.white,
            hoverColor: hoverColor,
          ),
          SizedBox(
            width: iconSpacer,
          ),
          IconButton(
            onPressed: () => _launchUrl('https://www.linkedin.com/in/jakub-trznadel7/'),
            icon: const FaIcon(FontAwesomeIcons.linkedin),
            iconSize: iconSize,
            color: Colors.white,
            hoverColor: hoverColor,
          ),
          SizedBox(
            width: iconSpacer,
          ),
          IconButton(
            onPressed: () => _launchUrl('https://www.instagram.com/bleiddze/'),
            icon: const FaIcon(FontAwesomeIcons.instagram),
            iconSize: iconSize,
            color: Colors.white,
            hoverColor: hoverColor,
          ),
        ],
      ),
    );
  }
}
