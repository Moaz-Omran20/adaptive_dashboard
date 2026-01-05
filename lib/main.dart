import 'package:adaptive_dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AdaptiveDashboard());
}

class AdaptiveDashboard extends StatelessWidget {
  const AdaptiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: DashboardView());
  }
}
