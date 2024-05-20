import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';

class TechnologyTile extends StatelessWidget {
  const TechnologyTile(
      {super.key, this.color, required this.name, required this.path});

  final Color? color;
  final String name;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 5,
              color: Colors.black.withOpacity(.2)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            path,
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 36, color: AppColors.primaryTextColor),
          )
        ],
      ),
    );
  }
}
