import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/widgets/header_widget.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';
import 'package:jtrznadel_portfolio/utils/app_texts.dart';

class TechnologiesSection extends StatelessWidget {
  const TechnologiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
      appKey: AppKeys.technologiesKey,
      title: 'technologies',
      content: const Row(),
    );
  }
}
