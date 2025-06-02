import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  static const String routeName = '/result_page';
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CalculatorBrain;
    final bmi = args.calculateBMI();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      args.getResult().toUpperCase(),
                      style: const TextStyle(
                        color: Color(0XFF24D876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmi,
                      style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      args.getInterpretation(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomContainerColor,
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                alignment: Alignment.center,
                height: kBottomContainerHeight,
                child: const Text('RE-CALCULATE', style: kLargeButtonTextStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
