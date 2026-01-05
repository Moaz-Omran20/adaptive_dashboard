import 'package:adaptive_dashboard/models/income_details_model.dart';
import 'package:flutter/material.dart';

import 'income_details.dart';

class IncomeDetailsListView extends StatelessWidget {
  IncomeDetailsListView({super.key});

  final List<IncomeDetailsModel> items = [
    IncomeDetailsModel(
      title: "Design service",
      value: "40%",
      color: Color(0xFF208CC8),
    ),
    IncomeDetailsModel(
      title: "Design product",
      value: "25%",
      color: Color(0xFF4EB7F2),
    ),
    IncomeDetailsModel(
      title: "Product royalty",
      value: "20%",
      color: Color(0xFF064061),
    ),
    IncomeDetailsModel(title: "Other", value: "22%", color: Color(0xFFE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        items.length,
        (index) => IncomeDetails(incomeDetailsModel: items[index]),
      ),
    );
    // return ListView.builder(itemBuilder: (context, index) {
    //   return IncomeDetails(incomeDetailsModel: items[index]);
    // },shrinkWrap: true,itemCount: items.length,);
  }
}
