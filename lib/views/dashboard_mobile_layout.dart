import 'package:flutter/material.dart';

import '../widgets/all_expenses_widget.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/income_section.dart';
import '../widgets/my_card_and_transaction_section.dart';
import '../widgets/quick_invoice_widget.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AllExpensesWidget(),
            SizedBox(height: 25),
            QuickInvoiceWidget(),
            MyCardAndTransactionSection(),
            SizedBox(height: 25),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
