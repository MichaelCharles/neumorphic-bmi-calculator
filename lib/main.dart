import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'screens/input_page.dart';

void main() {
  final mySystemTheme = SystemUiOverlayStyle.dark
      .copyWith(systemNavigationBarColor: Colors.black);

  SystemChrome.setSystemUIOverlayStyle(mySystemTheme);

  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kDeepPurple,
        scaffoldBackgroundColor: kDeepPurple,
      ),
      initialRoute: 'input',
      routes: {
        'input': (context) => InputPage(),
        'results': (context) => ResultsPage(),
      },
    );
  }
}
