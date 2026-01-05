import 'package:adaptive_dashboard/views/tablet_layout.dart';
import 'package:adaptive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:flutter/material.dart';

import 'dashboard_mobile_layout.dart';
import 'desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) =>  TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
