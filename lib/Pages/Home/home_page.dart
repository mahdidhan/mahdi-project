import 'dart:math';
import 'package:flutter/material.dart';

/// Random background color generator
class HomePage extends StatefulWidget {
  /// No parameters are required
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _bgColor = Colors.white;
  final Random _random = Random();

  void changeColor(){
    final int hex = _random.nextInt(0xffffffff);
    setState(() {
      _bgColor = Color(hex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          changeColor();
        },
        child: ColoredBox(
          color: _bgColor,
          child: const Center(
            child: Text(
                "Hello there",
            ),
          ),
        ),
      ),
    );
  }
}
