import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      content: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: technologies.length,
          itemBuilder: (context, index) {
            return technologies[index];
          },
        ),
      ),
    );
  }
}

class TechnologyTile extends StatelessWidget {
  const TechnologyTile(
      {super.key, this.color, required this.name, required this.path});

  final Color? color;
  final String name;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorFiltered(
            colorFilter:
                ColorFilter.mode(color ?? Colors.transparent, BlendMode.srcIn),
            child: SvgPicture.asset(
              path,
              width: 150,
              height: 150,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 36, color: AppColors.palmTextColor),
          )
        ],
      ),
    );
  }
}

List<TechnologyTile> technologies = [
  const TechnologyTile(
      name: 'Flutter', path: 'assets/logos/flutterio-icon.svg'),
  const TechnologyTile(name: 'Dart', path: 'assets/logos/dartlang-icon.svg'),
  const TechnologyTile(
      name: 'Firebase', path: 'assets/logos/firebase-icon.svg'),
  const TechnologyTile(name: 'Swift', path: 'assets/logos/swift-icon.svg'),
  const TechnologyTile(
      name: 'iOS', path: 'assets/logos/os-ios-svgrepo-com.svg'),
  const TechnologyTile(
      name: 'Xcode', path: 'assets/logos/xcode-svgrepo-com.svg'),
  const TechnologyTile(name: '.NET', path: 'assets/logos/dotnet-icon.svg'),
  const TechnologyTile(name: 'MSSQL', path: 'assets/logos/sql-icon.svg'),
];
