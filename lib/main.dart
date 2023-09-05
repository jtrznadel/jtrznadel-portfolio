import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/ui/home.dart';
import 'package:jtrznadel_portfolio/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'jTrznadel',
      home: HomePage(),
    );
  }
}
