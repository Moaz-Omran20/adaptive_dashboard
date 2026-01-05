import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History", style: AppStyles.styleMedium16),
        Text(
          "See all",
          style: AppStyles.styleRegularSelected16.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
