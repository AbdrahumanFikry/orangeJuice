import 'package:flutter/material.dart';

class CustomBlock extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;

  CustomBlock({
    this.child,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(
              0,
              0.5,
            ),
          ),
        ],
      ),
      child: child,
    );
  }
}
