import 'package:adaptive_dashboard/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import '../models/transaction_item_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static List<TransactionItemModel> items = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      amount: '\$20,129',
      isWithDrawal: true,
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 ',
      amount: '\$20,129',
      isWithDrawal: false,
    ),
    TransactionItemModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 ',
      amount: '\$20,129',
      isWithDrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => TransactionItem(transactionItemModel: items[index]),
      ),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(transactionItemModel: items[index]);
    //   },
    //   itemCount: items.length,
    // );
  }
}
