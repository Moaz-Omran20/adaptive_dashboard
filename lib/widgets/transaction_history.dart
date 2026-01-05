import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widgets/transaction_header.dart';
import 'package:adaptive_dashboard/widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       TransactionHeader(),
        Text("13 April 2022", style: AppStyles.regularGrey12),
        SizedBox(height: 16,),
        TransactionHistoryListView(),
      ],
    );
  }
}
