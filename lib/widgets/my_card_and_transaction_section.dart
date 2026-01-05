import 'package:adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_dashboard/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

import 'my_cards_section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,),
      child: CustomBackgroundContainer(
        paddingValue: 20,
        child: Column(
          children: [
            MyCardsSection(),
            SizedBox(height: 20),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
