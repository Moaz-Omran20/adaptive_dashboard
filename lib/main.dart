import 'package:adaptive_dashboard/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(enabled: false,builder: (context) => AdaptiveDashboard()));
}

class AdaptiveDashboard extends StatelessWidget {
  const AdaptiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
