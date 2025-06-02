import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/material.dart';

import 'screens/input.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff0A0E21)),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: const Color.fromARGB(255, 10, 14, 33),
          foregroundColor: const Color(0xffffffff),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        ResultPage.routeName: (context) => const ResultPage(),
      },
    );
  }
}
