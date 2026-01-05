import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final String title;

  final TextStyle titleColor;

  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Text(title, style: titleColor),
    );
  }
}
