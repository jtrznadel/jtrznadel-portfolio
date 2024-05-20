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

// class _NavbarHoverButtonState extends State<NavbarHoverButton> {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         Scrollable.ensureVisible(
//           widget.navKey,
//           duration: const Duration(milliseconds: 500),
//           curve: Curves.easeInOut,
//         );
//       },
//       child: RichText(
//         text: TextSpan(
//           text: '.',
//           style: AppTextStyles.navBarTextStyle().copyWith(
//             color: AppColors.primaryColor,
//           ),
//           children: [
//             TextSpan(text: widget.text, style: AppTextStyles.navBarTextStyle())
//           ],
//         ),
//       ),
//     );
//   }
// }

class _NavbarHoverButtonState extends State<NavbarHoverButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Scrollable.ensureVisible(
          widget.navKey,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return Colors.transparent;
          },
        ),
      ),
      child: MouseRegion(
        onEnter: (event) => setState(() => _isHovering = true),
        onExit: (event) => setState(() => _isHovering = false),
        cursor: SystemMouseCursors.click,
        child: RichText(
          text: TextSpan(
            text: '.',
            style: AppTextStyles.navBarTextStyle().copyWith(
              color: _isHovering
                  ? AppColors.primaryTextColor
                  : AppColors.primaryColor,
            ),
            children: [
              TextSpan(
                text: widget.text,
                style: AppTextStyles.navBarTextStyle().copyWith(
                  color: _isHovering
                      ? AppColors.primaryColor
                      : AppColors.primaryTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
