import 'package:flutter/material.dart';

import '../constants.dart';

class CardContent extends StatelessWidget {
  final IconData icon;
  final String title;

  const CardContent({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.0,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0),
        Text(title, style: kTextStyle),
      ],
    );
  }
}
