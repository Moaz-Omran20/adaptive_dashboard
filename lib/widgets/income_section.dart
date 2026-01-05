import 'package:adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_dashboard/widgets/income_details_list_view.dart';
import 'package:flutter/material.dart';
import 'Income_chart.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(paddingValue: 20, child: Column(
      children: [
        IncomeHeader(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetailsListView()),
          ],
        )

      ],
    ));
  }
}
