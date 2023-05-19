import 'package:flutter/material.dart';
import 'package:mahdi_project/Pages/Home/home_page.dart';

void main() {
  runApp(const Main());
}

/// My app
class Main extends StatelessWidget {
  /// My app constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
