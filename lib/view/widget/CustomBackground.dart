import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  final double padding;
  const CustomBackground({
    super.key,
    required this.child,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: child);
  }
}
