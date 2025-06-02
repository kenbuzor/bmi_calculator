import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    this.onClick,
    required this.cardColor,
    this.cardChild,
  });

  final void Function()? onClick;
  final Color cardColor;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
