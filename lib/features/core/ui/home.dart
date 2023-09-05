import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            for (final section in sections)
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(section),
              )
          ],
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
