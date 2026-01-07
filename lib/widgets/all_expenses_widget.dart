import 'package:adaptive_dashboard/widgets/all_expenses_header.dart';
import 'package:adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesWidget extends StatefulWidget {
  const AllExpensesWidget({super.key});

  @override
  State<AllExpensesWidget> createState() => _AllExpensesWidgetState();
}

class _AllExpensesWidgetState extends State<AllExpensesWidget> {
  final List<AllExpensesItemModel> expensesItems = [
    AllExpensesItemModel(title: "Balance", image: Assets.imagesBalance),
    AllExpensesItemModel(title: "Income", image: Assets.imagesBalance),
    AllExpensesItemModel(title: "Expense", image: Assets.imagesBalance),
  ];

  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: CustomBackgroundContainer(
        paddingValue: 20,
        child: Column(
          children: [
            AllExpensesHeader(),
            Row(
              children: List.generate(expensesItems.length, (index) {
                return Expanded(
                  child: AllExpensesItem(
                    expensesItem: expensesItems[index],
                    isSelected: index == isSelected,
                    function: () {
                      isSelected = index;
                      setState(() {});
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
