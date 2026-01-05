import 'package:adaptive_dashboard/widgets/quick_invoice_form_section.dart';
import 'package:adaptive_dashboard/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'latest_transaction_widget.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      paddingValue: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 36),
          LatestTransactionWidget(),
          Divider(color: Color(0xFFF1F1F1), height: 48),
          QuickInvoiceFormSection(),
        ],
      ),
    );
  }
}
