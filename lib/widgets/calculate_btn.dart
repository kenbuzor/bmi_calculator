import 'package:flutter/material.dart';

import '../constants.dart';

class CalculateBtn extends StatelessWidget {
  const CalculateBtn({
    super.key,
    required this.btnText,
    required this.onCalculate,
  });

  final String btnText;
  final void Function() onCalculate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCalculate,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        alignment: Alignment.center,
        height: kBottomContainerHeight,
        child: Text(btnText, style: kLargeButtonTextStyle),
      ),
    );
  }
}
