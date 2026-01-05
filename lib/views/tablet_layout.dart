import 'package:adaptive_dashboard/widgets/all_expenses_widget.dart';
import 'package:adaptive_dashboard/widgets/custom_drawer.dart';
import 'package:adaptive_dashboard/widgets/income_section.dart';
import 'package:flutter/material.dart';

import '../widgets/my_card_and_transaction_section.dart';
import '../widgets/quick_invoice_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesWidget(),
                SizedBox(height: 25),
                QuickInvoiceWidget(),
                MyCardAndTransactionSection(),
                SizedBox(height: 25,),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 32,),
      ],
    );
  }
}
