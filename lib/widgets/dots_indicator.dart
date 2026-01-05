import 'package:adaptive_dashboard/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {

 final int currentIndex;

  const DotsIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CustomDotIndicator(isActive: index == currentIndex),
      ),),
    );
  }
}
