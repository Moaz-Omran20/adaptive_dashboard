import 'package:adaptive_dashboard/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel expensesItem;

  final bool isSelected;

  final VoidCallback function;

  const AllExpensesItem({
    super.key,
    required this.expensesItem,
    required this.isSelected,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : null,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFFF1F1F1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: isSelected ? Colors.blue : Color(0xFFFAFAFA),
                  child: SvgPicture.asset(
                    expensesItem.image,
                    colorFilter: ColorFilter.mode(
                      isSelected ? Colors.white : Colors.blue,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: isSelected ? Colors.white : null,
                ),
              ],
            ),
            SizedBox(height: 34),
            Text(
              expensesItem.title,
              style: isSelected
                  ? AppStyles.semiBold16.copyWith(color: Colors.white)
                  : AppStyles.semiBold16,
            ),
            SizedBox(height: 8),
            Text(
              "April 2022",
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xFFAAAAAA),
                fontSize: 14,
                fontFamily: "Montserrat",
              ),
            ),
            SizedBox(height: 16),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "\$20,129",
                style: isSelected
                    ? AppStyles.semiBold24.copyWith(color: Colors.white)
                    : AppStyles.semiBold24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
