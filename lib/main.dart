import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color deepPurple = Color(0xFF0A0E21);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: deepPurple,
        scaffoldBackgroundColor: deepPurple,
      ),
      home: InputPage(),
    );
  }
}
