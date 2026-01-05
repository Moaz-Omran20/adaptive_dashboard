import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {


  final bool isActive;


  const CustomDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Container(
        width:isActive?32: 10,
        height: 10,
        decoration: ShapeDecoration(
          color: isActive?Colors.blue:Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
