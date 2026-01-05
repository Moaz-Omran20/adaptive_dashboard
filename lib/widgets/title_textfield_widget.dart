import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TitleTextFieldWidget extends StatelessWidget {
  final String title, hintText;

  const TitleTextFieldWidget({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Customer Name ",style: AppStyles.styleMedium16,),
        SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            hintText: "Type customer name",
            hintStyle: AppStyles.regularGrey12,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFF1F1F1)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFF1F1F1)),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Color(0xFFF1F1F1)),
            ),
          ),
        ),
      ],
    );
  }
}
