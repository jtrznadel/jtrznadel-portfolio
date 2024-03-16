import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class NavbarHoverButton extends StatefulWidget {
  const NavbarHoverButton(
      {super.key, required this.text, required this.navKey});

  final String text;
  final dynamic navKey;

  @override
  _NavbarHoverButtonState createState() => _NavbarHoverButtonState();
}

class _NavbarHoverButtonState extends State<NavbarHoverButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovering = true),
      onExit: (event) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 40,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              width: _isHovering ? 50 : 0,
              height: 2,
              color: AppColors.primaryColor,
            ),
            TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  widget.navKey,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(widget.text, style: AppTextStyles.navBarTextStyle()),
            ),
          ],
        ),
      ),
    );
  }
}
