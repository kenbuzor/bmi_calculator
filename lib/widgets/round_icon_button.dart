import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color(0XFF4C4F5E),
      child: Icon(icon),
    );
  }
}
