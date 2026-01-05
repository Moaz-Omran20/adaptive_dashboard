import 'package:adaptive_dashboard/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/all_expenses_widget.dart';
import '../widgets/income_section.dart';
import '../widgets/my_card_and_transaction_section.dart';
import '../widgets/quick_invoice_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          AllExpensesWidget(),
                          SizedBox(height: 24),
                          QuickInvoiceWidget(),
                        ],
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          MyCardAndTransactionSection(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
