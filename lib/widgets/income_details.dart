import 'package:adaptive_dashboard/models/income_details_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  final IncomeDetailsModel incomeDetailsModel;

  const IncomeDetails({super.key, required this.incomeDetailsModel});

  @override
  Widget build(BuildContext context) {

    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
            height: 12,
            width: 12,
            decoration: ShapeDecoration(
              shape: OvalBorder(),
              color: incomeDetailsModel.color,
            ),
          ),
          SizedBox(width: 8,),
          Text(incomeDetailsModel.title,style: AppStyles.styleRegular16,),
          SizedBox(width: 10,),

          Text(incomeDetailsModel.value,style: AppStyles.styleRegularSelected16,),
        ],
      ),
    );

    // return ListTile(
    //   leading: Container(
    //     height: 12,
    //     width: 12,
    //     decoration: ShapeDecoration(
    //       shape: OvalBorder(),
    //       color: incomeDetailsModel.color,
    //     ),
    //   ),
    //   title: Text(incomeDetailsModel.title,style: AppStyles.styleRegular16,),
    //   trailing: Text(incomeDetailsModel.value,style: AppStyles.styleRegularSelected16,),
    // );
  }
}
