import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All Expenses", style: AppStyles.semiBold20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: Text("Monthly ", style: AppStyles.styleMedium16),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ],
    );
  }
}
