import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {


  final Widget child;
  final double paddingValue;
  const CustomBackgroundContainer({super.key, required this.child,required this.paddingValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingValue),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
