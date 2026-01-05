import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widgets/custom_button.dart';
import 'package:adaptive_dashboard/widgets/title_textfield_widget.dart';
import 'package:flutter/material.dart';

class QuickInvoiceFormSection extends StatelessWidget {
  const QuickInvoiceFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFieldWidget(
                title: "Customer Name",
                hintText: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFieldWidget(
                title: "Customer email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFieldWidget(
                title: "Item Name",
                hintText: "Type item name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFieldWidget(title: "Item mount", hintText: "USD"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: "Add More Details",
                backgroundColor: Colors.white,
                titleColor: AppStyles.styleRegularSelected16,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                titleColor: AppStyles.styleRegularWhite16,
                backgroundColor: Colors.blue,
                title: "Send Money",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
