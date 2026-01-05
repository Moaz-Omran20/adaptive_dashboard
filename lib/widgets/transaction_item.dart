import 'package:adaptive_dashboard/models/transaction_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final TransactionItemModel transactionItemModel;

  const TransactionItem({super.key, required this.transactionItemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFAAAAAA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(transactionItemModel.title,style: AppStyles.semiBold16.copyWith(fontSize: 12),),
        subtitle: Text(transactionItemModel.subTitle,style: AppStyles.regularGrey12.copyWith(color: Colors.white60),),
        trailing: Text(
          "\$20,129",
          style: AppStyles.styleRegularSelected16.copyWith(
            color: transactionItemModel.isWithDrawal
                ? Colors.red
                : Colors.green,
          ),
        ),
      ),
    );
  }
}
